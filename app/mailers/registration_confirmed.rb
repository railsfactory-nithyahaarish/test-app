class RegistrationConfirmed < ActionMailer::Base
  default from: "nithyapreethi2210@gmail.com"
  
  def registration_confirmed(user)
    @user = user
    mail :to => user.Email_id, :subject => 'Registration successful'
end
end