require "rest-client"

# a slow response route
url = "http://localhost:4567/slow"

n = 10

start_time = Time.now
p "Start time: #{start_time}"

n.times do |i|
  response = RestClient.get url
  p "Time now: #{Time.now}, response #{i}: #{response.to_str}"
end

p "Time elapsed: #{Time.now - start_time} s."
