class ExampleMailer < ActionMailer::Base
  default from: "stuffadrift@gmail.com"

  def send_email_to_lost_matches(founds, lost)
   founds.each do |found|
      mail(to: "midnbeal18@gmail.com", subject: "potential lost item match", body: 'haha').deliver#lost[:description]).deliver
    end
  end
end
