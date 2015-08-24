require "sinatra"
require "sinatra/reloader"
require_relative "./lib/iterate.rb"



get "/index" do 
	phrases = Iterate.new(["I like beer.", "I play tennis.", "Travelling is my favourite activity."])
	@phrase = phrases.new_iterate
	
	erb :index
end


post "/input" do

	erb :index

end
