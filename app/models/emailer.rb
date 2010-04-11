class Emailer < ActionMailer::Base
  def confirmation(recipient)
      @subject = 'user study confirmation'
      @recipients = recipient.email
      @from = 'yingyin@csail.mit.edu'
      body  :user => recipient
   end

  def reminder(recipient)
    @subject = 'user study reminder'
    @recipients = recipient.email
    @from = 'yingyin@csail.mit.edu'
    body :user => recipient
  end

end
