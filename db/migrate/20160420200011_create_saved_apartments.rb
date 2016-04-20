class CreateSavedApartments < ActiveRecord::Migration
  def change
    create_table :saved_apartments do |t|

      t.integer :apartment_id
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
