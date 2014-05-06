class CreateItemTemplatesActions < ActiveRecord::Migration
  def change
    create_table :item_templates_actions do |t|
      t.integer :item_template_id
      t.integer :action_id
    end
  end
end
