get '/game' do
	# @username = params[:username]
	r = rand(3)
	string = ""
	if r == 0
		string = "Fácil"
	elsif r == 1
		string = "Intermedio"
	else
		string = "Difícil"
	end
	@deck = Deck.find_by(category: string)
	id_r = r + 1
	@card = Card.where(deck_id: id_r)
	puts "la r es: #{r}"
	puts "Card.id --> #{@card[0].id}"

	erb :game
end

post '/evaluate' do
	answer1 = params[:answer1]
	answer2 = params[:answer2]
	answer3 = params[:answer3]
	answer4 = params[:answer4]
	answer5 = params[:answer5]
	deck = params[:deck]
	card = Card.where(deck_id: deck)
	puts "el deck es: #{deck}"
	@counter = 0
	puts "yo di: #{answer1}"
	puts "respuesta: #{card[0].answer}"

	if answer1 == card[0].answer
		@counter += 1		
	end
	if answer2 == card[1].answer
		@counter += 1		
	end
	if answer3 == card[2].answer
		@counter += 1		
	end
	if answer4 == card[3].answer
		@counter += 1		
	end
	if answer5 == card[4].answer
		@counter += 1		
	end

	percentage = (@counter.to_f/5)*100
	mistake = 5 - @counter

	id_user = session[:user]
	@user = User.find(id_user)
	@user.update(games_played: @user.games_played + 1)	
	@round = Round.new(user_id: session[:user], deck_id: deck, percentage: percentage, hits: @counter, mistakes: mistake)
	@round.save
	session[:round] = @round.id
	redirect to('/statistics')
end

get '/statistics' do
	id_user = session[:user]
	@user = User.find(id_user)
	id_round = session[:round]
	@round = Round.find(id_round)


	erb :statistics
end