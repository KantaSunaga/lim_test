class InstagramTool < ApplicationRecord
  validates :AgencyName,:LoginId,:PassWord,:ContractDate ,:CustomerName,
            :CustomerAddress,:CustomerPhone, :payment, presence: true

  validates :LoginId, uniqueness: true

end
