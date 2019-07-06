require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'sinatra/activerecord'
require './models'

enable :sessions

helpers do
  def current_user
    User.find_by(id: session[:user])
  end
end

get'/'do
  erb :index
end

get '/signin' do
  erb :sign_in
end

post '/signin' do
 if  params[:name]=="LOVEMasakiAkiba" then

  redirect '/home'
else
  reirect ''
 end
end

get'/signout' do
  session[:user] = nil
  redirect'/'
end