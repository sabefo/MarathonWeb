class CreateRounds < ActiveRecord::Migration
	def change
		create_table :rounds do |t|
	    t.belongs_to :user
	    t.belongs_to :deck
  		t.float :percentage
    	t.integer :hits
    	t.integer :mistakes

    	t.timestamps
    end
  end
end
