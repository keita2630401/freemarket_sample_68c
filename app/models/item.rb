class Item < ApplicationRecord
  # belongs_to :user
  # belongs_to :category
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :images, :dependent => :delete_all
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :condition
  belongs_to_active_hash :ShippingCostSide
  belongs_to_active_hash :ShippingDays
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :name, presence: true, length: { minimum: 1, maximum: 40 }
  validates :description, presence: true, length: { minimum: 1, maximum: 1000 }
  validates :condition_id, presence: true
  validates :ShippingCostSide_id, presence: true
  validates :OriginArea_id, presence: true
  validates :ShippingDays_id, presence: true
  validates :price, presence: true
end
