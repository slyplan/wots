class Action < ActiveRecord::Base
  attr_accessible :descr, :name, :ruby_class

  has_and_belongs_to_many :item_templates
  has_and_belongs_to_many :facility_templates
end
