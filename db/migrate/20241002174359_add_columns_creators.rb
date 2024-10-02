class AddColumnsCreators < ActiveRecord::Migration[7.1]
  def change
    add_column :creators, :country, :string
    add_column :creators, :awards, :integer
    add_column :creators, :career, :string
    add_column :creators, :active, :boolean

  end
end
