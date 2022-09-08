class AddOwnerIdToListing < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :owner_id, :integer
    add_column :listings, :user_id, :integer
  end
end
