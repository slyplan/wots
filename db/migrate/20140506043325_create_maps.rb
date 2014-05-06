class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :clime_id
      t.string :name
      t.datetime :spawn_time
      t.integer :temperature
      t.boolean :winter
      t.boolean :snow
      t.boolean :rain
      t.boolean :sun

      t.timestamps
    end
  end
end
