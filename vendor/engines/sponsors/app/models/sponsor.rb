class Sponsor < ActiveRecord::Base
  has_many :event_sponsorships
  has_many :events, :through => :event_sponsorships

  acts_as_indexed :fields => [:name, :twitter, :desc]

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
