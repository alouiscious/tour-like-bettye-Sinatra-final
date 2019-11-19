class Venue < ActiveRecord::Base
  validates :name, :postal_code, presence: true
  has_many :tourdates
  has_many :users, through: :tourdates

  def self.visible
    where(deleted: false)
  end

 
end