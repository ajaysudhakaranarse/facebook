class Address < ApplicationRecord
  belongs_to :user
  validates :city, :state, :country, presence: true
end
