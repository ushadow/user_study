class Timeslot < ActiveRecord::Base
  has_many :signups

  def openings_left
    openings - signups.length    
  end
end
