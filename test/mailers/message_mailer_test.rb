class MessageMailerTest < ActionMailer::TestCase

  test "contact_me" do
    message = Message.new name: 'linda',
                          email: 'linda@example.org',
                          body: 'body'

    email = MessageMailer.contact_me(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Message from www.portfolio.com', email.subject
    assert_equal ['oneill.linda21@gmail.com'], email.to
    assert_equal ['linda@example.org'], email.from
    assert_match /body/, email.body.encoded
  end
end
