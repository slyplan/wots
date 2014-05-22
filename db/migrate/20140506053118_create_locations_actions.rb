class CreateLocationsActions < ActiveRecord::Migration
  def change
    create_table :actions_locations do |t|
      t.integer :location_id
      t.integer :action_id
    end
  end
end
