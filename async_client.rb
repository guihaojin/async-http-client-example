require "eventmachine"
require "em-http-request"

# a slow response route
url = "http://localhost:4567/slow"

n = 10

start_time = Time.now
p "Start time: #{start_time}"

EventMachine.run do
  n.times do |i|
    EventMachine::HttpRequest.new(url).get.callback do |http|
      p "Time now: #{Time.now}, response #{i}: #{http.response}"
    end
  end

  p "After HttpRequest."
end
