class ChangeDescriptiononLesson < ActiveRecord::Migration
  def up
  	remove_column :lessons, :description, :string
  	add_column :lessons, :description, :text
  end
  def down
  	add_column :lessons, :description, :string
  	remove_column :lessons, :description, :text
  end
end
