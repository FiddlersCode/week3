require 'sinatra'
#set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  'not a secret!'
end

get '/the real secret' do
  'n/abcdef'
end

get '/cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end
