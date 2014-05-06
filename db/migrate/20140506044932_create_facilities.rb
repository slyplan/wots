class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.integer :location_id
      t.string :name
      t.text :descr
      t.string :kind
      t.integer :visibility
      t.integer :own_inventory_id

      t.timestamps
    end
  end
end
