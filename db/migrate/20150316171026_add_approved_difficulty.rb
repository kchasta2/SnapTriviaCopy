class AddApprovedDifficulty < ActiveRecord::Migration
  def change
    add_column :questions, :approved, :boolean, null: false, default:false
    add_column :questions, :difficulty, :integer
  end
end
