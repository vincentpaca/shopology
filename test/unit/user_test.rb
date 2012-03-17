require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should "retreive facebook object" do
    user = Factory(:user)
    assert_not_nil user.facebook
  end
end
