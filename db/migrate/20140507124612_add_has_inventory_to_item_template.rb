class AddHasInventoryToItemTemplate < ActiveRecord::Migration
  def change
    add_column :item_templates, :inventory_size, :integer, :default => 0
  end
end
