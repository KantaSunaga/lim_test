module InstagramToolsHelper

  def get_instagram_tool(hash_value)
    id = decryption(hash_value)
    InstagramTool.find(id)
  end

  def decryption(hash_value)
    encryptor = ::ActiveSupport::MessageEncryptor.new(ENV["SECRET_HASH"], cipher: 'aes-256-cbc')
    encryptor.decrypt_and_verify(hash_value)
  end

  def send_new_apply_mails(customer)
    NotificationMailer.send_new_apply_to_lim(customer).deliver_now
    NotificationMailer.send_new_apply_to_upper(customer).deliver_now
    NotificationMailer.send_new_apply_to(customer).deliver_now
  end

  def send_created_mails(customer)
    NotificationMailer.send_created_to(customer).deliver_now
    NotificationMailer.send_created_to_upper(customer).deliver_now
    NotificationMailer.send_created_to_lim(customer).deliver_now
  end

end
