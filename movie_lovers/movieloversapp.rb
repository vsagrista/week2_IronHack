
require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "./lib/logic.rb"
enable :sessions

keyword = ""
random_array = [0,1,2]

get "/" do 
	@question = "Let's see how much you know about movies..."
	erb :index
end

post "/search_keyword" do 
	keyword = params[:keyword]
	@movies = Movie.new.get_movies_by_keyword(keyword)
	random_array_sample = random_array.sample
	random_array.delete(random_array_sample)
	@sample_date = @movies[random_array_sample].year
	@question = "Which movie was filmed in #{@sample_date}?"
	erb :search
end

get "/correct_answer" do 
	@movies = Movie.new.get_movies_by_keyword(keyword)
	random_array_sample = random_array.sample
	@sample_date = @movies[random_array_sample].year
	@question = "Which movie was filmed in #{@sample_date}?"
	random_array.delete(random_array_sample)
	if random_array.length == 0
		@question = "Wow! You answered them all right, congrats!"
	end
	erb :search
end