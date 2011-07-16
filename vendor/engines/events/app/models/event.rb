class Event < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :description]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :pic, :class_name => 'Image'
end
