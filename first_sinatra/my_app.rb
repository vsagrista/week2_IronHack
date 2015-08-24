require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "./lib/count_words.rb"

word_count = nil   # this will be the value of the variable on get "/file"

get "/" do 
	@greetings = "Hi, how are you?"
	erb :index
end

get "/hi" do
	"Hi there!"
end


get "/file" do
	@word_count = word_count # here
	erb :file
end

post "/say_my_name" do	
	"#{params}"
end

post "/words" do
	tempfile = params[:file][:tempfile]
	content = tempfile.read
	word_counter = CountWords.new(content)
	word_count = word_counter.count_words
	#erb :words
	#erb :file
	redirect to("/file")
end