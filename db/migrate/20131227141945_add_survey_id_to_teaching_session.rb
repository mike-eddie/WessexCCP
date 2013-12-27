class AddSurveyIdToTeachingSession < ActiveRecord::Migration
  def change
    add_column :teaching_sessions, :survey_id, :integer
  end
end
