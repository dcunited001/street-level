class Sponsor < ActiveRecord::Base
  has_many :event_sponsorships
  has_many :events, :through => :event_sponsorships
  belongs_to :pic, :class_name => 'Image'

  acts_as_indexed :fields => [:name, :twitter, :desc]

  validates :name, :presence => true, :uniqueness => true

  has_friendly_id :name, :use_slug => true
end
