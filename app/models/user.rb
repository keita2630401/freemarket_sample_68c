class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :family_name,         presence: true
  validates :first_name,        presence: true
  validates :family_name_kana,    presence: true
  validates :first_name_kana,   presence: true
  validates :nickname,          presence: true

  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  validates :encrypted_password, format: { with: VALID_PASSWORD_REGEX}
  validates :encrypted_password, length: { minimum: 7 }
end
