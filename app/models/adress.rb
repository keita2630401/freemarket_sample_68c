class Adress < ApplicationRecord
  belongs_to :user

  validates :post_number, presence: true, format: {with:/\A\d{7}\z/}
  validates :prefecture_id, presence: true
  validates :municipality, presence: true
  validates :town, presence: true
  validates :telephone_number, format: {with: /\A\d{10}$|^\d{11}\z/}, allow_blank: true
end
