class User < ApplicationRecord
  validates :name, :address, :gender, presence: true
end
