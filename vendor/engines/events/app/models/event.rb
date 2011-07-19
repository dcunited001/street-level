class Event < ActiveRecord::Base
  has_many :event_sponsorships
  has_many :event_rsvps
  has_many :sponsors, :through => :event_sponsorships
  belongs_to :event_type
  belongs_to :pic, :class_name => 'Image'

  acts_as_indexed :fields => [:name, :desc]

  validates :name, :presence => true, :uniqueness => true

  has_friendly_id :name, :use_slug => true
end
