# Application Mailer
class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@blernswar.com'
  layout 'mailer'

  @url = 'http://localhost:3000/'
end
