class CreateProgressions < ActiveRecord::Migration
  def change
    create_table :progressions do |t|
      t.string :name
      t.integer :progressable_id
      t.string :progressable_type
      t.boolean :is_completed
      t.boolean :is_approved

      t.timestamps
    end
  end
end
