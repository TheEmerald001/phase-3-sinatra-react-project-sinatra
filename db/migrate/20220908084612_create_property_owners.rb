class CreatePropertyOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :phone_number
    end
  end
end
