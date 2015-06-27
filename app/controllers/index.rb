# post '/statistics' do

# 	erb :statistics
# end

# get '/game' do

# 	erb :game
# end





# ===============================

get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @error = session[:error]
  erb :index
end

# get '/:error' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  # erb :index
# end

post '/login' do
	name = params[:username]
	password = params[:password]
	puts "entramos"

	user = User.authenticate(name, password)
	puts "el usuario es: #{user}"
	if user
		# erb :secret
		session[:user] = user.id
		redirect to("/profile")
	else
		@error = "Username or password invalid"
		erb :index
	end
end

post '/logout' do
  session.clear
  redirect to('/')
end