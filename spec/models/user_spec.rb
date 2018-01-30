require 'rails_helper'

RSpec.describe User do
      it 'should validate dob' do
      user = User.new
      user.date_of_birth = '1-02-2020'
      result = user.vaildate_date
      expect(result).to eq(true)
    end
end
