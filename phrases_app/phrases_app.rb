require "sinatra"
require "sinatra/reloader"
require_relative "./lib/iterate.rb"
require "pry"

array = Iterate.new

get "/index" do 
	
	@phrase = array.new_iterate
	erb :index
end


post "/input" do

    content = params[:user_input]
    array.push_text(content)
    redirect to("/index")


end
