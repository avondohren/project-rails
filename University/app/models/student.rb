class Student < ActiveRecord::Base
  attr_accessible :fname, :lname
  
  has_and_belongs_to_many :klasses
end
