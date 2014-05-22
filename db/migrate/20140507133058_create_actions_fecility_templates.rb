class CreateActionsFecilityTemplates < ActiveRecord::Migration
  def change
    create_table :actions_facility_templates do |t|
      t.integer :facility_template_id
      t.integer :action_id
    end
  end
end
