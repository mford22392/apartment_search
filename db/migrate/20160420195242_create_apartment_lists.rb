class CreateApartmentLists < ActiveRecord::Migration
  def change
    create_table :apartment_lists do |t|

      t.text :title
      t.text :city
      t.text :state
      t.integer :map_id

      t.timestamps null: false
    end
  end
end
