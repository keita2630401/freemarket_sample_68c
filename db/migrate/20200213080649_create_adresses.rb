class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string  :family_name,      null: false
      t.string  :first_name,       null: false
      t.string  :family_name_kana, null: false
      t.string  :first_name_kana,  null:false
      t.integer :post_number,      null: false
      t.string  :prefecture,       null: false
      t.string  :municipality,     null: false
      t.string  :town,             null: false
      t.integer :telephone_number,  
      t.integer :user_id,          null:false, foreign_key:true

      t.timestamps
    end
  end
end
