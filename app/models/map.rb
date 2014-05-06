class Map < ActiveRecord::Base
  attr_accessible :clime_id, :name, :rain, :snow, :spawn_time, :sun, :temperature, :winter
  has_many :characters
  has_many :locations
  belongs_to :clime

end
