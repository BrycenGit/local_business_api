class AddColumnToBusinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :name, :string
    add_column :businesses, :zipcode, :string
    add_column :businesses, :phone, :string
    add_column :businesses, :address, :string

  end
end
