class Event < ActiveRecord::Base
  belongs_to :event_type
  has_many :event_sponsorships
  has_many :event_rsvps
  has_many :sponsors, :through => :event_sponsorships

  acts_as_indexed :fields => [:name, :description]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :pic, :class_name => 'Image'
end
