class Teacher < ActiveRecord::Base
  attr_accessible :fname, :lname
  
  has_many :klasses
  
  validates :fname, :presence => true
  validates :lname, :presence => true

  def name
    fname + " " + lname
  end

end