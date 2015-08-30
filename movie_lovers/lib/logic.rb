
require "imdb"
require "pry"

class Movie
attr_accessor :movies 
	def initialize
		@movies = []
	end
	def get_movies_by_keyword(keyword)
		list = Imdb::Search.new(keyword)
		list.movies.each do |movie|
			if movie.poster != nil
        @movies << movie
      end
        break if @movies.length == 9
      end
		@movies
	end
end

class Question 
attr_accessor :question
	def get_random_question(array,sample_number)
		if sample_number.odd?
			sample_date = array[sample_number].year
			@question = "Which movie was filmed in #{sample_date}?"
		else 
			sample_writer = array[sample_number].writers
			@question = "Which movie was directed by #{sample_writer[0]}?"
		end
		@question
	end
end
