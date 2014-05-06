class Character < ActiveRecord::Base
  attr_accessible :backpack_item_id, :body_item_id, :boots_item_id, :comfort, :hands_item_id, :head_item_id, :health, :hungry, :legs_item_id, :luck, :mood, :stamina, :thirst, :tire, :user_id, :watchful, :wrist_item_id

  belongs_to :map

end
