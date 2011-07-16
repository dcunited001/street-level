class Video < ActiveRecord::Base
  belongs_to :user

  acts_as_indexed :fields => [:name, :desc, :url]

  validates :name, :presence => true, :uniqueness => true
  
end
