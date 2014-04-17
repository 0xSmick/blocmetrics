class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :page_url
      t.text :value_1
      t.text :value_2

      t.timestamps
    end
  end
end
