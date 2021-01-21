require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/test' do
    "Testing infrastructure working!"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name_1] = params[:name_1]
    session[:name_2] = params[:name_2]
    redirect '/play'
  end

  get '/play' do
    @name_1 = session[:name_1]
    @name_2 = session[:name_2]
    erb(:play)
  end

  get '/attack' do
    @name_1 = session[:name_1]
    @name_2 = session[:name_2]
    erb(:attack)
  end

  run! if app_file == $0
end
