class Video < ActiveRecord::Base
  belongs_to :user

  acts_as_indexed :fields => [:name, :desc, :url]

  validates :name, :presence => true, :uniqueness => true
  validates :slug, :presence =>  true, :uniqueness => true

  #validates_format_of :url, :with => /http:\/\/(www\.)?youtube\.com\//

  #before_validation :translate_url_to_embed
  before_save :insert_slug  #why does this not run??

  #def translate_url_to_embed
  #
  #end

  def insert_slug
    self.slug = to_slug
  end

  def to_slug
    name.downcase.split(' ').join('-')
  end
end

