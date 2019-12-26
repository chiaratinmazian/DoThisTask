require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "congrats" do
    mail = UserMailer.congrats
    assert_equal "Congrats", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
