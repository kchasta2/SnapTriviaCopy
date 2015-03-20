class AddTurnCountsToGames < ActiveRecord::Migration
  def change
    add_column :games, :player1_turn_count, :integer, default: 0
    add_column :games, :player2_turn_count, :integer, default: 0
  end
end
