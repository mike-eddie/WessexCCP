class CompletedSurvey < ActiveRecord::Base
  attr_accessible :complete, :student_num, :survey_id, :responses_attributes, :response_attributes, :attendances_attributes

  has_many :responses
  has_many :questions, :through => :responses
  belongs_to :survey
  belongs_to :attendance

  accepts_nested_attributes_for :responses
end
