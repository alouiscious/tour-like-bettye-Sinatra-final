class Venues < ActiveRecord::Migration[5.2]
  def change 
    create_table :venues do |t|
      t.string :name
      t.string :booking
      t.string :box_office
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :description 
      t.string :website 
      t.string :address 
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :longitude
      t.string :latitude
  
      t.timestamps null: false
    end
  end
end