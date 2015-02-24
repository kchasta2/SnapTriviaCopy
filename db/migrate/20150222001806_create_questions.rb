class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title
      t.text :rightAns
      t.text :wrongAns1
      t.text :wrongAns2
      t.text :wrongAns3

      t.timestamps null: false
    end
  end
end
