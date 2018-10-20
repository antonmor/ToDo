require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
 
 test "new_task" do 
  mail = UserMailer.new_task
  assert_equal  "New task", mail.subject 
  assert_equal ["to@example.com"], mail_to
  assert_equal ["from@example.com"], mail_from 
  assert_match  "Hi", mail.body.enconded
 end

  
end
