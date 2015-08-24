require "sinatra"
require "sinatra/reloader"
require_relative "./lib/operations.rb"
require "pry"


get "/" do 
	erb :index
end

post "/addition" do
	addition1 = params[:addition1]
	addition2 = params[:addition2]
	new_calculation = Calculator.new(addition1,addition2)
	@adding_result = new_calculation.addition
	erb :index
end


post "/substraction" do
	substraction1 = params[:substraction1]
	substraction2 = params[:substraction2]
	new_calculation = Calculator.new(substraction1,substraction2)
	@substraction_result = new_calculation.substraction
	erb :index
end



post "/multiplication" do
	multiplication1 = params[:multiplication1]
	multiplication2 = params[:multiplication2]
	new_calculation = Calculator.new(multiplication1,multiplication2)
	@multiplication_result = new_calculation.multiplication
	erb :index
end



post "/division" do
	division1 = params[:division1]
	division2 = params[:division2]
	new_calculation = Calculator.new(division1,division2)
	@division_result = new_calculation.division
	erb :index
end
