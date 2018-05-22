require 'sinatra/base'
require './lib/spaces.rb'

class MakersBnB < Sinatra::Base

  get '/listings' do
    @spaces = Spaces.all
    erb(:index)
  end

  post '/listings' do
    flatName = params['title']
    Spaces.add(flatName)
    redirect '/'
  end

run! if app_file == $0

end
