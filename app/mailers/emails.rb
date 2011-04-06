class Emails < ActionMailer::Base
  default :from => 'yingyin@mit.edu'
  
  def confirmation(signup)
    @signup = signup
    
    mail :subject => 'User study confirmation',
         :to => signup.email do |format|
      format.text  # emailer/confirmation.text.erb
    end
  end

  def reminder(signup)
    @signup = signup
    
    mail :subject => 'User study reminder',
         :to => signup.email do |format|
      format.text  # emailer/reminder.text.erb
    end
  end
end
