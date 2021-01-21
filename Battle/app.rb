require 'sinatra/base'
require 'player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/test' do
    "Testing infrastructure working!"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:name_1])
    $player_2 = Player.new(params[:name_2])
    redirect '/play'
  end

  get '/play' do
    @name_1 = $player_1.name
    @name_2 = $player_2.name
    erb(:play)
  end

  get '/attack' do
    @name_1 = $player_1.name
    @name_2 = $player_2.name
    erb(:attack)
  end

  run! if app_file == $0
end
