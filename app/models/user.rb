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
  has_many :addresses, dependent: :destroy
  has_many :posts , dependent: :destroy
  validates :name, format: {with: /\A[a-zA-Z]+ [a-zA-Z]+ [a-zA-Z]+/, message: 'firstName middle_name last_name (In this format)'}
  validates :gender, presence: true
  validates :email, presence: true
  validates :password, length:{minimum: 5}, confirmation: true
  validates :date_of_birth, presence: true

  def vaildate_date
    start_date = "1-1-2000"
    end_date = DateTime.now
    date = date_of_birth
    date.between?(Date.parse(start_date), end_date)
  end
end
