class Inventory < ActiveRecord::Base
  attr_accessible :slots
  has_many :items, :dependent => :destroy

end
