class AddGames2 < ActiveRecord::Migration
  def change
  	add_column :users, :games_played, :integer, default: 0
  end
end
