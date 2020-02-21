class RemoveStatusFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :status, :string
  end
end
