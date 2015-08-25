require 'sinatra'
require 'pry'
require 'sinatra/reloader'


get '/time/before/:hours' do
	@hours = params[:hours].to_i 
	@time_now = Time.now
	@time_before = @time_now - (@hours * 60 * 60)
	erb :time
end
