require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "./lib/storage.rb"


list = []
completed = []
my_storage = Storage.new

get "/" do 
	@list = list
	@completed = completed
	erb :index
end

post "/add_task" do 
	task = params[:task]
	list.push(task)
	my_storage.push_task(task)
	redirect to("/")
end


post "/remove_task" do 
	index_task = params[:task_to_delete].to_i
	done_task = list[index_task]
	list.delete_at(index_task)
	completed.push(done_task)	
	redirect to("/")
end


post "/remove_permanently" do 
	index_task = params[:delete_permanent].to_i
	if list.include?(list[index_task])
	  task_to_remove = list[index_task]
	  list.delete(task_to_remove)
	else 
		task_to_remove = completed[index_task]
		completed.delete(task_to_remove)
	end
	redirect to("/")
end


