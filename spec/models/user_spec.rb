require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.new(first_name: 'Alice', last_name: 'Smith', birth_year: 1990, email: 'mail@mail.com')
  end
  it 'is invalid without a first name' do
    user.first_name = nil
    expect(user).not_to be_valid
  end
  it 'is invalid without a last name' do
    user.last_name = nil
    expect(user).not_to be_valid
  end
  it 'is invalid without a birth year' do
    user.birth_year = nil
    expect(user).not_to be_valid
  end
  it 'is invalid without a email address' do
    user.email = nil
    expect(user).not_to be_valid
  end
end
