class Signup < ActiveRecord::Base
  belongs_to :timeslot
  
  validates_each :timeslot do |record, attr, value|
    if record.timeslot.openings_left <= 0
      record.errors.add attr, "No openings left for this time"
    end
  end
  validates_uniqueness_of :name
  validates_uniqueness_of :email
  validates_presence_of :name
  validates_presence_of :email
end
