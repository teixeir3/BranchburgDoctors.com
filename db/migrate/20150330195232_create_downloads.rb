class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :title
      t.integer :position
      t.boolean :display, null: false, default: true
    
      
      
      t.timestamps
    end
    
    add_index :downloads, :display
  end
end
