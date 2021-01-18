require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "hello world!"
end

get '/secret' do
  "You can totally do this!"
end
