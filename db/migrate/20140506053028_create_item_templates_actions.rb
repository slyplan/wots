class CreateItemTemplatesActions < ActiveRecord::Migration
  def change
    create_table :actions_item_templates do |t|
      t.integer :item_template_id
      t.integer :action_id
    end
  end
end
