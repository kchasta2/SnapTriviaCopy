class AddChangeTrophyColumnsInGames < ActiveRecord::Migration
  def change
    rename_column :games, :art_trophy, :art_trophy_p1
    rename_column :games, :entertainment_trophy, :entertainment_trophy_p1
    rename_column :games, :history_trophy, :history_trophy_p1
    rename_column :games, :geography_trophy, :geography_trophy_p1
    rename_column :games, :science_trophy, :science_trophy_p1
    rename_column :games, :sports_trophy, :sports_trophy_p1

    add_column :games, :art_trophy_p2, :boolean, default: false, null: false
    add_column :games, :entertainment_trophy_p2, :boolean, default: false, null: false
    add_column :games, :history_trophy_p2, :boolean, default: false, null: false
    add_column :games, :geography_trophy_p2, :boolean, default: false, null: false
    add_column :games, :science_trophy_p2, :boolean, default: false, null: false
    add_column :games, :sports_trophy_p2, :boolean, default: false, null: false
  end
end
