class CreateObservances < ActiveRecord::Migration
  def change
    create_table :observances do |t|
      t.date :start_date
      t.string :name, null: false
      t.string :link, null: false
      t.text :description
      t.integer :photo_id
      t.boolean :display, null: false, default: true
      t.integer :position

      t.timestamps
    end
    
    add_index :observances, :photo_id
    add_index :observances, :display
  end
end
