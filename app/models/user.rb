class User < ActiveRecord::Base

	has_many :rounds
	has_many :decks, through: :rounds

  def self.authenticate(username, password)
  	puts "entramos al metodo"
  	puts "el usuario es: #{username}"
  	puts "el password es: #{password}"
  	user = User.find_by(name: username)
  	# puts "pasamos la instancia"
  	# puts "user: #{user}"
		return nil unless user
	    # si el email y el password corresponden a un usuario valido, regresa el usuario
	    # de otra manera regresa nil
			if user.password == password
		    user
		  else
		  	nil
		  end
		end
end

