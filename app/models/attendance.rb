class Attendance < ActiveRecord::Base
  attr_accessible :student_num, :teaching_session_id, :student_id, :fb_complete, :feedback_id

  belongs_to :student
  belongs_to :teaching_session

  has_many :completed_outcomes
  has_one :completed_survey

  scope :of_profession, lambda { |p| {:include => :student, :conditions => { :students => { :course => p}}}}
  scope :at_event, lambda { |e| {:include => :teaching_session, :conditions => { :teaching_sessions => { :id => e}}}}
  scope :in_year, lambda { |y| {:include => :student, :conditions => { :students => { :year => y}}}}
  scope :fb_not_required, :include => :teaching_session, :conditions => { :teaching_sessions => { :fb_not_required => true } }

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
    	Attendance.create! row.to_hash
  	end
  end
  
end
