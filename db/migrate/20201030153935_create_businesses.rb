class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :zipcode
      t.string :address
      t.string :phone
      t.timestamps
    end
  end
end
