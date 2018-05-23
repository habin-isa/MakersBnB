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
    borkName = params['title']
    Spaces.add(borkName)
    redirect '/spaces'
  end

run! if app_file == $0

end
