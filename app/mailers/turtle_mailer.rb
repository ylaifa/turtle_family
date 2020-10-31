class TurtleMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.turtle_mailer.create.subject
  #
  def create(turtle)
    @turtle_name = turtle.name

    mail to: turtle.email
  end
end
