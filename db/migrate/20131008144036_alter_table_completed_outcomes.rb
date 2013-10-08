class AlterTableCompletedOutcomes < ActiveRecord::Migration
  def up
  	connection.execute(%q{
       
        alter table completed_outcomes
  		alter column teaching_session_id type integer using cast(teaching_session_id as integer),
  		alter column outcome_id type integer using cast(outcome_id as integer)
  		
    })
  end

  def down
  end
end
