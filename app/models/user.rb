class User < ApplicationRecord
  has_secure_password

  validates_presence_of :name, :address, :city, :state, :zip
  validates :email, uniqueness: true, presence: true
  validates :password, confirmation: true, presence: true

  enum role: %w(user admin merchant)
end
