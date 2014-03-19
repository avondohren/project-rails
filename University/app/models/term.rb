class Term < ActiveRecord::Base
  attr_accessible :name
  
  has_many :klasses
  
  validates :name, :presence => true
end
