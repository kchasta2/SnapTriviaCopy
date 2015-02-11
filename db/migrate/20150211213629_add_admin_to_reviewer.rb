class AddAdminToReviewer < ActiveRecord::Migration
  def change
    add_column :reviewers, :reviewer, :boolean
  end
end
