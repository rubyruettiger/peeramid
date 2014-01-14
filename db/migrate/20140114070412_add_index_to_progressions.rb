class AddIndexToProgressions < ActiveRecord::Migration
  def change
  	add_index :progressions, :user_id
  end
end
