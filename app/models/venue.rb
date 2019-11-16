class Venue < ActiveRecord::Base

 has_many :users
 has_many :tourdates, through: :users

 
end