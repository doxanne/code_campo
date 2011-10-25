require 'test_helper'

class Notification::MentionTest < ActiveSupport::TestCase
  test "should create mention notification when reply with mention" do
    assert_difference "Notification::Mention.count" do
      Factory :reply, :mentioned_users => [Factory(:user)]
    end
  end
end
