class CreateLocationsActions < ActiveRecord::Migration
  def change
    create_table :locations_actions do |t|
      t.integer :location_id
      t.integer :action_id
    end
  end
end
