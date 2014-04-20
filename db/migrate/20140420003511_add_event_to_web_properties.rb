class AddEventToWebProperties < ActiveRecord::Migration
  def change
    add_column :web_properties, :event, :string
  end
end
