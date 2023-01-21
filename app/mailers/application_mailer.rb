# frozen_string_literal: true

# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
