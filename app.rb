require 'sinatra/base'
require './lib/spaces.rb'

class MakersBnB < Sinatra::Base

  get '/listings' do
    @spaces = Spaces.all
    erb(:index)
  end

  post '/listings' do
    borkName = params['title']
    Spaces.add(borkName)
    redirect '/listings'
  end

run! if app_file == $0

end
