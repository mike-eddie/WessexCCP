class TeachingFormat < ActiveRecord::Base
  attr_accessible :format

  has_many :teaching_sessions
  
end
