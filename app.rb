require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:marina.sqlite3"

require './models'


get '/home' do 

	User.create
	erb :homepage
end
get '/user' do

	@user = User.last
	erb :users
end
get '/free' do

	erb :free

end

get '/register' do
	puts "MY PARAMS" + params.inspect

	erb :register

end
post '/register' do
	puts "MY PARAMS" + params.inspect


end
get '/beauty' do
	erb :beauty

end
