class ExampleMailer < ActionMailer::Base
  default from: "m180378@usna.edu"

  def send_email_to_lost_matches(email, description)
    @email = email
    @description = description
    mail(to: @email, subject: 'Lost Item Match')
  end
end
