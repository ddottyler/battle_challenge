require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/attack.rb'

class Battle < Sinatra::Base

  before do 
    @game = Game.instance
  end

  enable :sessions

  get '/test' do
    "Testing infrastructure working!"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:name_1])
    player_2 = Player.new(params[:name_2])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do 
    Attack.run(@game.opponent_of(@game.current_turn))
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    erb(:attack)
  end

  post '/switch-turns' do 
    @game.switch_turns
    redirect('/play')
  end

  get '/game_over' do 
    erb (:game_over)
  end

  run! if app_file == $0
end
