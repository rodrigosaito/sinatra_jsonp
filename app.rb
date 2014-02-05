require 'sinatra'
require 'sinatra/json'

get "/jsonp" do
  json(%(do_something({ "some_name": "some value" })))
end
