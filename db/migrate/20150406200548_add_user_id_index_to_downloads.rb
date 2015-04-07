class AddUserIdIndexToDownloads < ActiveRecord::Migration
  def change
    add_index :downloads, :user_id
  end
end
