require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

get '/' do
  erb :home
end

get "/rocket" do
  erb :rocket
end

get "/gta" do
  erb :gta
end

get "/apex" do
  erb :apex
end

get "/pubg" do
  erb :pubg
end

get "/r6s" do
  erb :r6s
end

get "/minecraft" do
  erb :minecraft
end