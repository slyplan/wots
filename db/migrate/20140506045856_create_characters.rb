class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.integer :map_id
      t.string  :name
      t.integer :stamina
      t.integer :luck
      t.integer :watchful
      t.integer :free_points
      t.integer :mood
      t.integer :tire
      t.integer :health
      t.integer :comfort
      t.integer :thirst
      t.integer :hungry
      t.integer :head_item_id
      t.integer :body_item_id
      t.integer :hands_item_id
      t.integer :wrist_item_id
      t.integer :legs_item_id
      t.integer :boots_item_id
      t.integer :backpack_item_id

      t.timestamps
    end
  end
end
