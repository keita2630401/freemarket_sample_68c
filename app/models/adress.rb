class Adress < ApplicationRecord
  belongs_to :user

  validates :family_name, presence: true
  validates :first_name, presence: true
  validates :family_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :post_number, presence: true
  validates :prefecture, presence: true
  validates :municipality, presence: true
  validates :town, presence: true
  validates :building, presence: true
end
