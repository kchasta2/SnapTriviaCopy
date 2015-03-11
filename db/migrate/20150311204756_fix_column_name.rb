class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :subjects, :name, :subject_title
    rename_column :questions, :subject, :subject_title
  end
end
