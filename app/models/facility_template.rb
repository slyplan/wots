class FacilityTemplate < ActiveRecord::Base
  attr_accessible :descr, :kind, :name, :visibility, :inventory_size
  has_many :facilities
  has_and_belongs_to_many :actions
end
