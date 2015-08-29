
require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "./lib/logic.rb"


get "/" do 
	erb :index
end

post "/search_keyword" do 
	keyword = params[:keyword]
	@movies = Movie.new.get_movies_by_keyword(keyword)
	erb :index
end