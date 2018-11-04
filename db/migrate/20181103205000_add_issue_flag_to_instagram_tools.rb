class AddIssueFlagToInstagramTools < ActiveRecord::Migration[5.1]
  def change
    add_column :instagram_tools, :issue_flag, :boolean, default: false, null: false
  end
end
