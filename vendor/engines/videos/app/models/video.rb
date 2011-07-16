class Video < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :desc, :url]

  validates :name, :presence => true, :uniqueness => true
  
end
