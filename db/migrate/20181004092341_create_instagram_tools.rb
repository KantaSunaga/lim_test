class CreateInstagramTools < ActiveRecord::Migration[5.1]
  def change
    create_table :instagram_tools do |t|
      t.string :AgencyName
      t.string :LoginId
      t.string :PassWord
      t.datetime :ContractDate
      t.string :CustomerName
      t.string :CustomerAddress
      t.integer :CustomerPhone
      t.string :payment

      t.timestamps
    end
  end
end
