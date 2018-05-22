require 'sinatra/base'


class MakersBnB < Sinatra::Base

  get '/' do
    erb(:index)
  end


run! if app_file == $0

end
