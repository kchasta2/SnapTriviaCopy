class RemoveCountsFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :art_count, :integer
    remove_column :games, :entertainment_count, :integer
    remove_column :games, :history_count, :integer
    remove_column :games, :geography_count, :integer
    remove_column :games, :science_count, :integer
    remove_column :games, :sports_count, :integer

  end
end
