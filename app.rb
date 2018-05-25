require 'sinatra/base'
require_relative './lib/spaces'

class MakersBnB < Sinatra::Base

  get '/spaces' do
    @spaces = Spaces.all
    erb(:index)
  end

  get '/spaces/new' do
    erb(:"spaces/new")
  end

  post '/spaces' do
    bork = {title: params['title'], description: params['description'], price: params['price']}
    Spaces.add(bork)
    redirect '/spaces'
  end

  get '/bookings/new' do
    erb(:bookings)
  end


run! if app_file == $0

end
