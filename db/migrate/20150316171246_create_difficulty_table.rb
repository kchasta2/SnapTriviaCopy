class CreateDifficultyTable < ActiveRecord::Migration
  def change
    create_table :difficulty_tables do |t|
      t.integer :easy
      t.integer :medium
      t.integer :hard

      t.timestamp null: false
    end
  end
end
