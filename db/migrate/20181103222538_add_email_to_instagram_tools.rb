class AddEmailToInstagramTools < ActiveRecord::Migration[5.1]
  def change
    add_column :instagram_tools, :email, :string, null: false
  end
end
