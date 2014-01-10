class AddUserIDsToProgressions < ActiveRecord::Migration
  def change
    add_column :progressions, :user_id, :integer
  end
end
