require "sinatra"
require "sinatra/reloader"
require "pry"

enable :sessions


users = {"pepe"=>"pepep","juan"=>"juanp","manolo"=>"manolop"}


get "/" do
	if session[:user_key] && session[:user_key].length > 0
		redirect to("/welcome")
	end

	erb :index
end

post "/logon" do
  user_name = params[:user_name]
  user_password = params[:user_password]
  if users.has_key? user_name  
  	password_array = users[user_name]
  	binding.pry
  end
  
  if user_password == password_array
		session[:user_key] = user_name 
  	redirect to("/welcome")
  else 
  	@repeat = "Password was wrong, please try again."
  	binding.pry
  	redirect to("/")
  end

end

get "/welcome" do
	
	 	erb :welcome
	
end