class NotificationMailer < ActionMailer::Base
  default from: ENV["FROM_MAILE_ADRESS"]

  def send_new_apply_to_lim(customer)
   @customer = customer
   mail(to:      ENV["SEND_MAILE_ADRESS"],
        subject: 'エターナルフォース新規申し込みのお知らせ'
       )
  end

  def send_new_apply_to_upper(customer)
    @customer = customer
    mail(to:      ENV["UPPER_MAILE_ADRESS"],
         subject: 'エターナルフォースアカウント作成のお願い'
        )
  end

  def send_new_apply_to(customer)
    @customer = customer
    mail(to:      customer.email,
         subject: 'エターナルフォース申し込み完了のお知らせ'
        )
  end

  def send_created_to_lim(customer)
   @customer = customer
   mail(to:      ENV["SEND_MAILE_ADRESS"],
        subject: 'エターナルフォースアカウント発行完了のお知らせ'
       )
  end

  def send_created_to_upper(customer)
    @customer = customer
    mail(to:      ENV["UPPER_MAILE_ADRESS"],
         subject: 'メール通知完了のお知らせ'
        )
  end

  def send_created_to(customer)
    @customer = customer
    mail(to:      customer.email,
         subject: 'エターナルフォースアカウント発行完了のお知らせ'
        )
  end
end
