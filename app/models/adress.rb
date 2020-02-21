class Adress < ApplicationRecord
  belongs_to :user

  validates :post_number, presence: true
  validates :prefecture_id, presence: true
  validates :municipality, presence: true
  validates :town, presence: true
  validates :building, presence: true
  validates :telephone_number, presence: true
end
