require "sinatra"
require "sinatra/reloader"
require_relative "./lib/operations.rb"
require "pry"


get "/" do 
	erb :index
end

post "/input" do
	addition1 = params[:addition1]
	addition2 = params[:addition2]
	new_calculation = Calculator.new(addition1,addition2)
	
	@adding_result = new_calculation.addition
	erb :index
end