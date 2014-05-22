class AddFacilityTemplateAssoc < ActiveRecord::Migration
  def change
    add_column :facilities, :facility_template_id, :integer
    remove_column :facilities, :name
    remove_column :facilities, :descr
    remove_column :facilities, :kind
    remove_column :facilities, :visibility
  end
end
