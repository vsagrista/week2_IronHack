
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
