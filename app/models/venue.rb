class Venue < ActiveRecord::Base

 has_many :tourdates
 has_many :users, through: :tourdates
end