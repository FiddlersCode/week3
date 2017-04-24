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
  "<div>
    <img src='http://bit.ly/1eze8aE'
    style='border: 3px dashed red'
  </div>"
end
