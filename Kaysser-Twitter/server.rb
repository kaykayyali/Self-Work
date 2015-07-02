require 'sinatra'
require 'sinatra/reloader'
require 'yaml/store'
require 'require_all'
require_all 'lib'

enable(:sessions)


get '/' do 
	redirect to '/home'
end

get '/home' do
erb(:home)
end

get '/landing' do 
	erb(:landing)
end

post '/login' do 
	if Login.new.check(params[:user_email], params[:user_pass])  
		session[:user_email] = params[:user_email]
		redirect to '/landing'
	else
		redirect to '/home'
	end

end





