class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :city
      t.string :location_url
      t.string :image_url
      t.integer :price
      t.integer :rating
    end
  end
end
