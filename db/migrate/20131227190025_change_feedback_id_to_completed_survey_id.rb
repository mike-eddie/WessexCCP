class ChangeFeedbackIdToCompletedSurveyId < ActiveRecord::Migration
  def up
  	rename_column :attendances, :feedback_id, :completed_survey_id
  end

  def down
  end
end
