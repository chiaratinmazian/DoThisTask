class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.congrats.subject
  #
  def congrats
    @user = params[:user]
    @list = params[:list]
    mail(to: @user.email, subject: 'Congratulations !')
  end
end
