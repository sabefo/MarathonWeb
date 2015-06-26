class User < ActiveRecord::Base

	has_many :rounds
	has_many :decks, through: :rounds

  def self.authenticate(email, password)
		return nil unless user = User.find_by(email: email)

	    # si el email y el password corresponden a un usuario valido, regresa el usuario
	    # de otra manera regresa nil
			if user.password == password
		    user
		  else
		  	nil
		  end
		end
end

