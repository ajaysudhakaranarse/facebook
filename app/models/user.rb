class User < ApplicationRecord
  has_one :address
  validates :name, :gender, :email, :password, presence: true
end
