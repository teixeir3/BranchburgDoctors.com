class AddObservancesUserId < ActiveRecord::Migration
  def up
    add_column :observances, :user_id, :integer
    add_index :observances, :user_id
  end

  def down
    remove_column :observances, :user_id
  end
end
