class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
