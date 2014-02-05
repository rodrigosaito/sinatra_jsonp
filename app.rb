require 'sinatra'
require 'sinatra/json'

set :protection, except: [ :json_csrf ]

get "/jsonp" do
  json(%(do_something({ "some_name": "some value" })))
end
