# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class ExampleMailerPreview < ActionMailer::Preview
  def send_email_to_lost_matches_preview
    ExampleMailer.send_email_to_lost_matches(email, description)
  end
end
