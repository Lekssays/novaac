class AddPublicToComplaints < ActiveRecord::Migration[5.0]
  def change
    add_column :complaints, :isPublic, :boolean
  end
end
