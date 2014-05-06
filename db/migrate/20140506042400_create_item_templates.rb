class CreateItemTemplates < ActiveRecord::Migration
  def change
    create_table :item_templates do |t|
      t.string :name
      t.text :descr
      t.string :kind

      t.timestamps
    end
  end
end
