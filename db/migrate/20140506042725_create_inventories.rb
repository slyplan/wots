class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :slots

      t.timestamps
    end
  end
end
