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

get '/random-cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end
