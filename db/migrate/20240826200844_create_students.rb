class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :code, null:false
      t.string :name, null:false
      t.integer :batch, null:false
      t.integer :semester, null:false

      t.timestamps
    end
  end
end
