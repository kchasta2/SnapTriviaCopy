class AddColumnsToPlayerStats < ActiveRecord::Migration
  def change
    add_column :player_stats, :score, :integer, default: 0
    add_column :player_stats, :next_lvl_score, :integer, default: 100
    add_column :player_stats, :level, :integer, default: 1
    add_column :player_stats, :total_games, :integer, default: 0
    add_column :player_stats, :total_wins, :integer, default: 0
  end
end
