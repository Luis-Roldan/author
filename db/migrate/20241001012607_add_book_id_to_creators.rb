class AddBookIdToCreators < ActiveRecord::Migration[7.1]
  def change
    add_reference :creators, :book, foreign_key: true
  end
end
