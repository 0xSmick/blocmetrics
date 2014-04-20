class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.text :web_property
      t.text :url
      t.text :type

      t.timestamps
    end
  end
end
