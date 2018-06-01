class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.text :name
      t.text :education
      t.integer :mob
      t.integer :age

      t.timestamps
    end
  end
end
