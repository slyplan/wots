class Facility < ActiveRecord::Base
  attr_accessible :descr, :own_inventory_id, :kind, :location_id, :name, :visibility
  belongs_to :location
  belongs_to :inventory, :class_name => Inventory, :foreign_key => :own_inventory_id, :dependent => :destroy
  has_and_belongs_to_many :actions

end
