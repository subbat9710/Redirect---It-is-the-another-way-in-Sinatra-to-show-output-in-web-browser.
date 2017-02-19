require 'sinatra'

get '/' do
	erb :get_name
end

post '/post_name' do
	name = params[:user_name]
    redirect "/location?name=" + name
end

get '/location' do 
	name_1 = params[:name]
	erb :get_location, :locals => {:name => name_1}
end

post '/post_location' do
	location = params[:user_location]
	name_2 = params[:user_name_again]
	"Your name is #{name_2} and your location is #{location}."
end