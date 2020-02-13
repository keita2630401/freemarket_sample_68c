class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.integer :post_number,      null: false
      t.string  :prefecture,       null:false
      t.string  :municipality,     null:false
      t.string  :town,             null:false
      t.string  :building,         null:false
      t.integer :user_id,          null:false, foreign_key:true

      t.timestamps
    end
  end
end
