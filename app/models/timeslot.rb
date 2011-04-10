class Timeslot < ActiveRecord::Base
  has_many :signups, :dependent => :destroy
  belongs_to :event
  
  def self.open_timeslots
    Timeslot.all.select { |t| t.openings_left > 0 }.map { |t| [t.name, t.id] }
  end

  def openings_left
    openings - signups.length    
  end
end
