class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.string :bio, null: true
      t.string :no_of_books, null: false, default: 1
      t.integer :contact, null: false

      t.timestamps
    end
  end
end
