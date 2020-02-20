class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string  :family_name,      null: false
      t.string  :first_name,       null: false
      t.string  :family_name_kana, null: false
      t.string  :first_name_kana,  null:false
      t.integer :post_number,      null: false
      t.integer  :prefecture_id,       null: false
      t.string  :municipality,     null: false
      t.string  :town,             null: false
      t.string  :building
      t.integer :telephone_number
      t.integer :user_id,          null:false, foreign_key:true
      t.timestamps
    end
  end
end
