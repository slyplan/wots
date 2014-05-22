class CreateFacilityTemplates < ActiveRecord::Migration
  def change
    create_table :facility_templates do |t|
      t.string :name
      t.text :descr
      t.string :kind
      t.integer :visibility
      t.integer :inventory_size, :default => 0 

      t.timestamps
    end
  end
end
