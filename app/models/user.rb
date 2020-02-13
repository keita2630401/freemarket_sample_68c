class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items, :dependent => :delete_all
  has_many :addresses, :dependent => :delete_all
  has_many :cards, :dependent => :delete_all
  has_many :comments, :dependent => :delete_all
  has_many :likes


  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  validates :encrypted_password, format: { with: VALID_PASSWORD_REGEX}
  validates :encrypted_password, length: { minimum: 7 }
end
