class AddColumnsToGame < ActiveRecord::Migration
  def change
    add_column :games, :art_count, :integer
    add_column :games, :entertainment_count, :integer
    add_column :games, :history_count, :integer
    add_column :games, :geography_count, :integer
    add_column :games, :science_count, :integer
    add_column :games, :sports_count, :integer
    add_column :games, :art_trophy, :boolean, null: false, default:false
    add_column :games, :entertainment_trophy, :boolean, null: false, default:false
    add_column :games, :history_trophy, :boolean, null: false, default:false
    add_column :games, :geography_trophy, :boolean, null: false, default:false
    add_column :games, :science_trophy, :boolean, null: false, default:false
    add_column :games, :sports_trophy, :boolean, null: false, default:false
  end
end
