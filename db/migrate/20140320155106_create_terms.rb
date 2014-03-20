class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :name
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
