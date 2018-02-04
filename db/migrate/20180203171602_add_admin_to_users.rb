class AddAdminToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :isAdmin, :boolean
  end
end
