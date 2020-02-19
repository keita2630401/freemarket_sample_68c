class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,               null: false
      t.text :description,          null: false
      t.integer :condition_id,          null: false
      t.integer :ShippingCostSide_id, null: false
      t.integer  :OriginArea_id,       null: false
      t.integer :ShippingDays_id,      null: false
      t.integer :price,             null: false
      t.string :status, default: "exihibiting"
      t.timestamps
    end
  end
end
