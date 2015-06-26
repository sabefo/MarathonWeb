get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/profile' do

	erb :profile
end

post '/statistics' do

	erb :statistics
end

get '/game' do

	erb :game
end