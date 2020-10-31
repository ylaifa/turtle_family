# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'aaa@yopmail.com'
  layout 'mailer'
end
