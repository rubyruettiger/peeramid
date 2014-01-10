class AddNameAndDescriptionToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :name, :string
    add_column :lessons, :description, :string
  end
end
