class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,               null: false
      t.text :description,          null: false
      t.integer :condition,          null: false
      t.integer :shipping_cost_side, null: false
      t.integer  :origin_area,       null: false
      t.integer :shipping_days,     null: false
      t.integer :price,             null: false
      t.timestamps
    end
  end
end
