class AddPayloadToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :payload, :string
  end
end
