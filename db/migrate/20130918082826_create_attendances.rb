class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.string :student_id
      t.string :teaching_session_id

      t.timestamps
    end
  end
end
