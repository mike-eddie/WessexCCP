class AddNewAttendanceTable < ActiveRecord::Migration
  def up
  	create_table :attendances do |t|
      t.string :student_num
      t.string :teaching_session_id

      t.timestamps
    end
  end

  def down
  end
end
