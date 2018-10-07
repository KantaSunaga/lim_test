class NotificationMailer < ActionMailer::Base
  default from: '"エターナルフォース申し込みフォーム" <noreply@yoursite.com>'

  def send_new(customer)
   @customer = customer
   mail(to:      ENV["SEND_MAILE_ADRESS"],
        subject: 'エターナルフォース新規申し込みのお知らせ'
       )
  end
end
