class AddUserIdToDownloads < ActiveRecord::Migration
  def change
    add_column :downloads, :user_id, :integer, null: false
  end
end
