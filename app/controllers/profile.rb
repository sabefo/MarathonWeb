# before '/profile' do
# 	@username = params[:username]
# 	pass = params[:password]
# 	# puts "estamos en el before"
# 	# puts "el usuario es: #{@username}"
# 	# puts "el pass es: #{pass}"
# 	# puts "-"*15
# 	@user = User.authenticate(@username, pass)
# 	puts "la evaluacion fue: #{@user.name}"
# 	if @user
# 		# puts "pasamos"
# 		# puts "ahora vamos bien"
# 		# @games = user.games_played
# 		# puts "vamos a mandar: #{@user.id}"
# 		redirect to("/profile/#{@user.id}")
# 	else
# 		# puts "no pasamos"
# 		# session.clear
# 		redirect to("/")
# 		# erb :index
# 	end

	# if session[:username] == nil
	# 	puts "No existe una sesion"
	# 	session[:error] = "no existe una sesion"
	# 	# @error = session[:error]
	# 	redirect to("/")
	# end
# end

# post '/profile' do
# 	username = params[:username]

# 	redirect to("/profile/#{username}")
# end
