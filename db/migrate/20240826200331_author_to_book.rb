class AuthorToBook < ActiveRecord::Migration[7.1]
  def change
    add_reference :books, :author
  end
end
