class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_template_id
      t.integer :inventory_id
      t.integer :own_inventory_id

      t.timestamps
    end
  end
end
