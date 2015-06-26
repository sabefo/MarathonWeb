post '/signup' do
	user = params[:username]
	pass = params[:password]
	n_user = User.new(name: user, password: pass)
	n_user.save
	session[:user] = n_user.id
	redirect to('/profile')
end

get '/profile' do
	# @username = params[:username]
	@user = User.find(session[:user])
	erb :profile
end