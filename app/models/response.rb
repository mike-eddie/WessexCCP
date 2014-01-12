class Response < ActiveRecord::Base
  attr_accessible :boolean, :integer, :question_id, :string, :student_num, :text, :completed_survey_id, :question_attributes

  belongs_to :question, :autosave => true
  belongs_to :completed_survey, :autosave => true
  belongs_to :student, :foreign_key => "student_num"

  scope :to_question, lambda { |q| {:include => :question, :conditions => { :questions => { :id => q}}}}
  scope :in_year, lambda { |y| {:include => :student, :conditions => { :students => { :year => y}}}}
  scope :of_profession, lambda { |p| {:include => :student, :conditions => { :students => { :course => p}}}}
  scope :string, lambda { |s| {:conditions => ["string = ?", s]} }

  #def self.to_question(q)
  	#Response.all(:include => :question, :conditions => { :questions => { :id => q}})
  #end
  
end
