class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.references :creator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
