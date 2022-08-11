class RenameNameAndEmailInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :name_id, :username
    rename_column :users, :email_id, :email
  end
end
