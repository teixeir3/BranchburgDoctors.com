class CorrectUserHomePhone < ActiveRecord::Migration
  def change
    rename_column :users, :home_phonew, :home_phone
  end
end
