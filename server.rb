require "sinatra"

get "/slow" do
  sleep 2
  "slow"
end
