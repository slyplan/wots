class Clime < ActiveRecord::Base
  attr_accessible :name, :rain, :snow, :sun, :t_max, :t_min, :winter
  has_many :maps
end
