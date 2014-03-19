class Teacher < ActiveRecord::Base
  attr_accessible :fname, :lname
  
  has_many :klasses
end
