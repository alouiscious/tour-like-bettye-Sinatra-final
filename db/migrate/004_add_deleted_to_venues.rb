class AddDeletedToVenues < ActiveRecord;;Migration
  def change
    add_column :venues, :deleted, :boolean, :default => false
  end
end