class AddCompletedSurveyIDtoResponse < ActiveRecord::Migration
  def up
  	add_column :responses, :completed_survey_id, :integer
  end

  def down
  end
end
