class AddApproveAtAndCreatedAtToProgressions < ActiveRecord::Migration
  def change
  	add_column :progressions, :approved_at, :datetime
  	add_column :progressions, :completed_at, :datetime
  end
end
