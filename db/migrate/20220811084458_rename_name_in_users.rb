class RenameNameInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :name, :name_id
  end
end
