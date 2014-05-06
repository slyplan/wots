class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :name
      t.string :descr
      t.string :ruby_class

      t.timestamps
    end
  end
end
