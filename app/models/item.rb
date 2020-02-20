class Item < ApplicationRecord
  # belongs_to :user
  # belongs_to :category
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :images, :dependent => :delete_all
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :condition
  belongs_to_active_hash :shipping_cost_side
  belongs_to_active_hash :shipping_days
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :name, presence: true, length: { minimum: 1, maximum: 40 }
  validates :description, presence: true, length: { minimum: 1, maximum: 1000 }
  validates :condition_id, presence: true
  validates :shipping_cost_side_id, presence: true
  validates :prefecture_id, presence: true
  validates :shipping_days_id, presence: true
  validates :price, presence: true
end
