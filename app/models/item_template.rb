class ItemTemplate < ActiveRecord::Base
  attr_accessible :descr, :name, :kind, :inventory_size

  has_and_belongs_to_many :actions
  has_many :items
end
