class ChangeDataTelephoneNumberToAdress < ActiveRecord::Migration[5.2]
  def change
    change_column :adresses, :telephone_number, :string
  end
end
