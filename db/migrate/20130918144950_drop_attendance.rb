class DropAttendance < ActiveRecord::Migration
  def up
  	drop_table :attendances
  end

  def down
  end
end

