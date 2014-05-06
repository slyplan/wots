class CreateFacilitiesActions < ActiveRecord::Migration
  def change
    create_table :facilities_actions do |t|
      t.integer :facility_id
      t.integer :action_id
    end
  end
end
