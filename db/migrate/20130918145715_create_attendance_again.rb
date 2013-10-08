class CreateAttendanceAgain < ActiveRecord::Migration
  def up
  	create_table :attendances do |t|
      t.string :student_id
      t.string :teaching_session_id

      t.timestamps
  end
  end

  def down
  end
end
