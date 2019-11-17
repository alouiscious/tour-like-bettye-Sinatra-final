class AddDeletedToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :deleted, :boolean, :default => false
  end
end