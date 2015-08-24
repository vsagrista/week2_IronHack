require "sinatra"
require "sinatra/reloader"
require_relative "./lib/iterate.rb"
require "pry"

my_object = Iterate.new

get "/index" do 
	@array = my_object.array
	@phrase = my_object.new_iterate
	erb :index
end


post "/input" do

    content = params[:user_input]
    my_object.push_text(content)
    redirect to("/index")


end
