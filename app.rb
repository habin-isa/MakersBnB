require 'sinatra/base'
require_relative './lib/spaces'
require './lib/user'

class MakersBnB < Sinatra::Base

  get '/users/sign_up' do
    erb(:users_sign_up)
  end

  post '/users' do
    user = {email: params['email'], password: params['password']}
    User.add(user)
    session[:user_id] = user.id
    redirect('/')
  end

  get '/spaces' do
    @spaces = Spaces.all
    erb(:index)
  end

  get '/new' do
    erb(:new)
  end

  post '/spaces' do
    bork = {title: params['title'], description: params['description'], price: params['price']}
    Spaces.add(bork)
    redirect '/spaces'
  end

  get '/bookings/new' do
    erb(:bookings)
  end

  get '/requests' do
    erb(:requests)
  end

run! if app_file == $0

end
