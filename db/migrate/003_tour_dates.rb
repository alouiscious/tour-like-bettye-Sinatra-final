class TourDates < ActiveRecord::Migration[5.2]
  def change 
    create_table :tourdates do |t|
      t.integer :user_id
      t.integer :venue_id
      t.boolean :status
      t.string :notes
      
      t.timestamps null: false
    end
  end
end