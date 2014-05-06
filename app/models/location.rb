class Location < ActiveRecord::Base
  attr_accessible :cx, :cy, :descr, :own_inventory_id, :map_id, :name
  belongs_to :map
  belongs_to :inventory, :class_name => Inventory, :foreign_key => :own_inventory_id, :dependent => :destroy
  has_many :facilities
  has_and_belongs_to_many :actions

  before_create { |loc|
    i = Inventory.create(:slots => 12)
    loc.own_inventory_id = i.id
  }

end
