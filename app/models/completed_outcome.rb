class CompletedOutcome < ActiveRecord::Base
  attr_accessible :outcome_id, :teaching_session_id

  belongs_to :teaching_session
  belongs_to :outcome
  
end
