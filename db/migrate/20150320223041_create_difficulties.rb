class CreateDifficulties < ActiveRecord::Migration
  def change
    create_table :difficulties do |t|
      t.string :rating
      t.integer :rating_value

      t.timestamps null: false
    end
  end
end
