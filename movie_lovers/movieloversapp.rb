
require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "./lib/logic.rb"

question_number = [0,1,2,3,4,5,6,7,8]
movie_object = nil
questions = Question.new


get "/" do 
	@question = "Let's see how much you know about movies..."
	erb :index
end

post "/search_keyword" do 
	keyword = params[:keyword]
	@movies = Movie.new.get_movies_by_keyword(keyword)
	movie_object = @movies
	redirect to("answers")
end

get "/answers" do 
	sample_number = question_number.sample
	question_number.delete(sample_number)
	@sample_writer = movie_object[sample_number].writers
	@question = questions.get_random_question(movie_object,sample_number)
	@movies = movie_object
	if question_number.length == 0
		redirect to("/congrats")
    end
	erb :search
end

get "/congrats" do 
	erb :congrats
end

