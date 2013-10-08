class Attendance < ActiveRecord::Base
  attr_accessible :student_num, :teaching_session_id, :student_id

  belongs_to :student
  belongs_to :teaching_session

  has_many :completed_outcomes

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
    	Attendance.create! row.to_hash
  	end
  end
  
end
