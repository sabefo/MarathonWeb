class CreateDecks < ActiveRecord::Migration
  def change
  	create_table :rounds do |t|
	    t.string :category
  end
end
