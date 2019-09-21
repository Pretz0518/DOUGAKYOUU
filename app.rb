require 'google_drive'


require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

get '/' do
  session = GoogleDrive::Session.from_config('config.json')
  session.files.each { |file| p file }
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