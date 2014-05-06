class Item < ActiveRecord::Base
  attr_accessible :own_inventory_id, :inventory_id, :item_template_id

  belongs_to :item_template
  belongs_to :inventory, :class_name => Inventory, :foreign_key => :own_inventory_id, :dependent => :destroy

end
