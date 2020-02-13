class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :images, :dependent => :delete_all
  accepts_nested_attributes_for :images, allow_destroy: true
end
