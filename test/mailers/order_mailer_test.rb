require 'test_helper'
class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Books Online Store Confirmation", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["ruby@example.com"], mail.from
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Books Online Store Shipped", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["ruby@example.com"], mail.from
    mail.body.encoded
  end
end
