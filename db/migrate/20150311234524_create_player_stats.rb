class CreatePlayerStats < ActiveRecord::Migration
  def change
    create_table :player_stats do |t|
      t.integer :userId
      t.integer :art_correct_count
      t.integer :art_total_count
      t.integer :entertainment_correct_count
      t.integer :entertainment_total_count
      t.integer :geography_correct_count
      t.integer :geography_total_count
      t.integer :history_correct_count
      t.integer :history_total_count
      t.integer :science_correct_count
      t.integer :science_total_count
      t.integer :sports_correct_count
      t.integer :sports_total_count

      t.timestamp null: false
    end
  end
end
