class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_comment.subject
  #
  def new_comment(user_id, comment_id)
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
