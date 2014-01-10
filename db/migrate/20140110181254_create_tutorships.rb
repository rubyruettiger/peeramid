class CreateTutorships < ActiveRecord::Migration
  def change
    create_table :tutorships do |t|
      t.integer :student_id
      t.integer :tutor_id

      t.timestamps
    end
    add_index :tutorships, :student_id
    add_index :tutorships, :tutor_id
    add_index :tutorships, [:student_id, :tutor_id], unique: true
  end
end
