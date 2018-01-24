# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  gender        :string
#  email         :string
#  password      :string
#  date_of_birth :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ApplicationRecord
  has_one :address
  has_many :posts
  validates :name, :gender, :email, :password, :date_of_birth, presence: true
end
