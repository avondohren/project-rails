class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :name
      t.integer :term_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
