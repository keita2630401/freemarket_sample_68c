class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,               null: false
      t.text :description,          null: false
      t.string :shipping_cost_side, null: false
      t.string  :origin_area,       null: false
      t.string  :shipping_days,     null: false
      t.timestamps
    end
  end
end
