class Item < ApplicationRecord
  # belongs_to :user
  # belongs_to :category
  has_many :images, :dependent => :delete_all
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :name, presence: true, length: { minimum: 1, maximum: 40 }
  validates :description, presence: true, length: { minimum: 1, maximum: 1000 }
  validates :condition, presence: true
  validates :shipping_cost_side, presence: true
  validates :origin_area, presence: true
  validates :shipping_days, presence: true
  validates :price, presence: true
end
