class ChangeDatatypePassWordOfInstagramTools < ActiveRecord::Migration[5.1]
  def change
    # [形式] change_column(テーブル名, カラム名, データタイプ, オプション)
   change_column :instagram_tools, :PassWord, :string
   change_column :instagram_tools, :CustomerPhone, :string
  end
end
