require 'sinatra'
require 'sinatra/reloader'
require './greeter.rb'
require 'better_errors'

configure :development do
	use BetterErrors::Middleware
	BetterErrors.application_root = __dir__
end



before do 
	@greeter = Greeter.new
end

get '/hi' do
	@greeter.greet
end

get '/quote/:tag' do
	@greeter.quote params[:tag]
end

get '/quote' do 
	@greeter.quote
end