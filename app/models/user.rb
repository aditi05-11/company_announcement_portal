class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :bio, presence: true
  validates :date_of_birth, presence: true
  validates :password, presence: true, on: :create


end
