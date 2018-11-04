class InstagramTool < ApplicationRecord

  def self.add_hash_value
    encryptor = ::ActiveSupport::MessageEncryptor.new(ENV["SECRET_HASH"], cipher: 'aes-256-cbc')
    value = encryptor.encrypt_and_sign(self.id)
    self.update(hash_value: value)
  end
  
  validates :AgencyName,:LoginId,:PassWord,:ContractDate ,:CustomerName,
            :CustomerAddress,:CustomerPhone, :payment, presence: true
  validates :LoginId, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

end
