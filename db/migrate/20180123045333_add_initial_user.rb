class AddInitialUser < ActiveRecord::Migration[5.1]
  def up
    5.times do |i|
      User.create!(name: "ajay", gender:"M", email:"ajayanarse@gmail.com", password: "12345", date_of_birth: "10-12-1994")
   end
  end

  def down
    User.delete_all
  end
end
