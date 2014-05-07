class AddWebPropertiesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :web_property_id, :integer
  end
end
