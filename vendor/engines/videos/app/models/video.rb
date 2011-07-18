class Video < ActiveRecord::Base
  belongs_to :user

  acts_as_indexed :fields => [:name, :desc, :url]

  validates :name, :presence => true, :uniqueness => true
  validates :slug, :presence =>  true, :uniqueness => true

  before_create :insert_slug

  def insert_slug
    self.slug = to_slug
  end

  def to_slug
    name.downcase.split(' ').join('-')
  end
end

