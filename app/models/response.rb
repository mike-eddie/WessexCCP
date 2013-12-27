class Response < ActiveRecord::Base
  attr_accessible :boolean, :integer, :question_id, :string, :student_num, :text, :completed_survey_id

  belongs_to :question, :autosave => true
  belongs_to :completed_survey, :autosave => true

end
