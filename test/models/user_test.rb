require 'test_helper'

class UserTest < ActiveSupport::TestCase
  subject { users(:one) }

  should validate_presence_of(:name)
  should validate_presence_of(:email)
  should validate_uniqueness_of(:email).case_insensitive
  should validate_presence_of(:score)
  should validate_numericality_of(:score)
         .only_integer
         .is_greater_than_or_equal_to(0)

  should allow_value("5555555555").for(:phone)
  should allow_value("").for(:phone)
  # shouldn't have to validate_presence_of(:phone), since it's an optional field

  should_not allow_value("12").for(:phone)
  should_not allow_value("BAD EMAIL").for(:email)
  should_not allow_value("@").for(:email)
  should_not allow_value("  clinton@example.org").for(:email)

  should have_secure_password

  should have_many(:questions)
  should have_many(:answers)
  should have_many(:votes)
  should validate_presence_of(:token)
  # should validates_have_one(:click) WILL GET TO THIS WHEN CLICKS ARE IMPLEMENTED
  context "a new user" do
    should "send verification email after registration" do
      
      new_user = User.create
      
     end 
    end
end
