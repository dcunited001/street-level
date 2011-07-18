class Event < ActiveRecord::Base
  belongs_to :event_type
  has_many :event_sponsorships
  has_many :event_rsvps
  has_many :sponsors, :through => :event_sponsorships

  acts_as_indexed :fields => [:name, :description]

  validates :name, :presence => true, :uniqueness => true
  validates :slug, :presence =>  true, :uniqueness => true
  
  belongs_to :pic, :class_name => 'Image'

  before_create :insert_slug

  def insert_slug
    self.slug = to_slug
  end

  def to_slug
    name.downcase.split(' ').join('-')
  end
end
