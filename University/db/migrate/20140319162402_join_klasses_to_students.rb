class JoinKlassesToStudents < ActiveRecord::Migration
  def up
    create_table :klasses_students, :id => false do |t|
      t.integer :klass_id
      t.integer :student_id
    end
  end

  def down
    drop_table :klasses_students
  end
end
