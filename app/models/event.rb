class Event < ActiveRecord::Base
  has_many :time_slots, :dependent => :destroy
end
