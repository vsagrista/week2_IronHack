
require "imdb"
require "pry"

class Movie
attr_accessor :posters
	def initialize
		@array = []
		@posters = []
	end
	def get_movies_by_keyword(keyword)
		list = Imdb::Search.new(keyword)
		list.movies.each do |movie,poster|
			if movie.poster != nil
        @posters << movie.poster
      end
        break if @posters.length == 9
      end
		@posters
	end
end

