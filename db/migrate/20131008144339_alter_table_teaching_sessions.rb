class AlterTableTeachingSessions < ActiveRecord::Migration
  def up
  	connection.execute(%q{
       
        alter table teaching_sessions
  		alter column teaching_format_id type integer using cast(teaching_format_id as integer)
    })
  end

  def down
  end
end
