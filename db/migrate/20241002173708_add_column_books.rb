class AddColumnBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :publisher, :string
    add_column :books, :genre, :string
    add_column :books, :rating, :integer
  end
end
