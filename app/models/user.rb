class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :bio, presence: true
  validates :date_of_birth, presence: true


end
