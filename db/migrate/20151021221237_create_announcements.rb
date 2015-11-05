class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.date :start_date
      t.date :end_date
      t.string :title, null: false
      t.string :link
      t.text :short_desc
      t.text :full_desc
      t.boolean :display, null: false, default: true
      t.integer :position
      t.integer :user_id, null: false

      t.timestamps
    end
  
    add_index :announcements, :display
    add_index :announcements, :position
    add_index :announcements, :user_id
  end
end
