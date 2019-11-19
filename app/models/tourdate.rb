class Tourdate < ActiveRecord::Base
  belongs_to :user
  belongs_to :venue

  def venue_name
    venue.name
  end
end