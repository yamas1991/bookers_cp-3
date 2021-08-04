class AddNameToBookComments < ActiveRecord::Migration[5.2]
  def change
    add_column :book_comments, :name, :integer
  end
end
