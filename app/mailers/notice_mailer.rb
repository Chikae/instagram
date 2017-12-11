class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_gram.subject
  #
  def sendmail_gram
    @greeting = "Hi"
  end

  def sendmail_gram(gram)
    @gram = gram


    mail to: "cyooookae.0608@gmail.com",
      subject:'【Achieve】ブログが投稿されました'
  end
end
