require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "./lib/storage.rb"


list = []
completed = []

get "/" do 
	@list = list
	@completed = completed
	erb :index
end

post "/add_task" do 
	task = params[:task]
	list.push(task)
	redirect to("/")
end


post "/remove_task" do 
	index_task = params[:task_to_delete].to_i
	done_task = list[index_task]
	list.delete_at(index_task)
	completed.push(done_task)	
	redirect to("/")
end