class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :bio, presence: true
  validates :date_of_birth, presence: true
  validates :password, presence: true, on: :create


end
