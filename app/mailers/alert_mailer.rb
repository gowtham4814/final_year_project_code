class AlertMailer < ApplicationMailer
  default from: 'graphographo9@gmail.com'

  def accident(recipient_email, subject, content)
    @content = content
    mail(to: recipient_email, subject: subject)
  end
end
