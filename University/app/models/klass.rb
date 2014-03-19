class Klass < ActiveRecord::Base
  attr_accessible :name, :teacher_id, :term_id
  
  belongs_to :term
  belongs_to :teacher
  has_and_belongs_to_many :students
end
