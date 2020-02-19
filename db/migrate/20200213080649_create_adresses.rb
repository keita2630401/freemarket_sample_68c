class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.integer :post_number,      null: false
      t.integer :prefecture_id,    null:false
      t.string  :municipality,     null:false
      t.string  :town,             null:false
      t.string  :building
      t.integer :user_id,          null:false, foreign_key:true
      t.timestamps
    end
  end
end
