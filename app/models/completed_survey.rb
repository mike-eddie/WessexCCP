class CompletedSurvey < ActiveRecord::Base
  attr_accessible :complete, :student_num, :survey_id, :responses_attributes, :response_attributes, :attendances_attributes

  has_many :responses
  belongs_to :attendance

  accepts_nested_attributes_for :responses
end
