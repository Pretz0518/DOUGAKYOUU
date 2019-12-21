require 'google_drive'


require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'sinatra/activerecord'

enable :sessions

helpers do
  def current_user
    User.find_by(id: session[:user])
  end
end

before '/' do
  if session[:user].nil?
    redirect '/login'
  end
end

get '/login' do
    @logined = params[:failed]

  erb :login
end

get "/password" do
 if  params[:password]=="AGB" then
  session[:user] = "AGB"
  redirect '/'
else
  redirect '/login?failed=1'
 end
end


get'/signout' do
  session[:user] = nil
  redirect'/'
end

get '/' do
  session = GoogleDrive::Session.from_config('config.json')
  session.files.each { |file| p file }
  erb :home
end

get "/mem" do
  erb :mem
end

get "/rocket" do
  erb :rocket
end

get "/gta" do
  erb :gta
end

get "/mhw" do
  erb :mhw
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

