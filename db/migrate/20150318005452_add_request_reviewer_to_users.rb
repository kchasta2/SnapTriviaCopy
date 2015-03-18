class AddRequestReviewerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :request_reviewer, :boolean, default: false
  end
end
