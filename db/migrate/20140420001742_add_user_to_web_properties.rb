class AddUserToWebProperties < ActiveRecord::Migration
  def change
    add_column :web_properties, :user_id, :integer
    add_index :web_properties, :user_id
  end
end
