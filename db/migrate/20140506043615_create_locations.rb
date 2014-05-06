class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :map_id
      t.string :name
      t.text :descr
      t.integer :cx
      t.integer :cy
      t.integer :own_inventory_id

      t.timestamps
    end
  end
end
