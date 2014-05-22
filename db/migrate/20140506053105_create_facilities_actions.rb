class CreateFacilitiesActions < ActiveRecord::Migration
  def change
    create_table :actions_facilities do |t|
      t.integer :facility_id
      t.integer :action_id
    end
  end
end
