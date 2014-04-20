class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :type
      t.text :web_property
      t.text :url

      t.timestamps
    end
  end
end
