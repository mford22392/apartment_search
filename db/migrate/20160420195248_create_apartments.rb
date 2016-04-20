class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|

      t.string :nickname
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.text :notes
      t.integer :overall_rating

      t.timestamps null: false
    end
  end
end
