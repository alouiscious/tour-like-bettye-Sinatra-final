class Venue < ActiveRecord::Base
  validates :title, :content, presence: true
  has_many :users
  has_many :tourdates, through: :users

  def self.visible
    where(deleted: false)
  end

 
end