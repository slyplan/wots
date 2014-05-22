class Facility < ActiveRecord::Base
  attr_accessible :own_inventory_id, :location_id
  belongs_to :facility_template
  belongs_to :location
  belongs_to :inventory, :class_name => Inventory, :foreign_key => :own_inventory_id, :dependent => :destroy
  has_and_belongs_to_many :actions

end
