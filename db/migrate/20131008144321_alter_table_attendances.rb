class AlterTableAttendances < ActiveRecord::Migration
  def up
  	connection.execute(%q{
       
        alter table attendances
  		alter column teaching_session_id type integer using cast(teaching_session_id as integer)
  		
    })
  end

  def down
  end
end
