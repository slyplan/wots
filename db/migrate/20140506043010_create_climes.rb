class CreateClimes < ActiveRecord::Migration
  def change
    create_table :climes do |t|
      t.string :name
      t.integer :t_min
      t.integer :t_max
      t.integer :winter
      t.integer :rain
      t.integer :snow
      t.integer :sun

      t.timestamps
    end
  end
end
