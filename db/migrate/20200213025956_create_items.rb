class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,               null: false
      t.text :description,          null: false
      t.integer :condition_id,          null: false
      t.integer :shipping_cost_side_id, null: false
      t.integer  :prefecture_id,       null: false
      t.integer :shipping_days_id,      null: false
      t.integer :price,             null: false
      t.integer :user_id,          null: false
      t.string :status, default: "exihibiting"
      t.timestamps
    end
  end
end
