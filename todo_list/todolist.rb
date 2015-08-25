require "sinatra"
require "sinatra/reloader"
require "pry"


list = []

get "/" do 
	@list = list
	erb :index
end

post "/add_task" do 
	task = params[:task]
	list.push(task)
	redirect to("/")
end


post "/remove_task" do 
	task = params[:task_to_delete].to_i
	list.delete_at(task)
	redirect to("/")
end