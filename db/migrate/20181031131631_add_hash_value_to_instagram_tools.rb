class AddHashValueToInstagramTools < ActiveRecord::Migration[5.1]
  def change
    add_column :instagram_tools, :hash_value, :text
  end
end
