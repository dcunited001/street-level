class Sponsor < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :twitter, :desc]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :pic, :class_name => 'Image'
end
