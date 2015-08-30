
require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "./lib/logic.rb"

movie_search = Movie.new
random_array = [0,1,2,3,4,5,6,7,8]

get "/" do 
	@question = "Let's see how much you know about movies..."
	erb :index
end

post "/search_keyword" do 
	keyword = params[:keyword]
	@movies =movie_search.get_movies_by_keyword(keyword)
	@sample_date = @movies[random_array.sample].year
	@question = "Which movie was filmed in #{@sample_date}?"
	erb :index
end
