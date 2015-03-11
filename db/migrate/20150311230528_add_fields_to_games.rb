class AddFieldsToGames < ActiveRecord::Migration
  def change
    add_column :games, :player1_id, :integer
    add_column :games, :player2_id, :integer
    add_column :games, :player1_turn, :boolean, null: false, default: true
    add_column :games, :game_over, :boolean, null: false, default: true
  end
end
