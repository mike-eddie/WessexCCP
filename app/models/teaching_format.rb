class TeachingFormat < ActiveRecord::Base
  attr_accessible :format, :colour

  has_many :teaching_sessions
  
end
