class AddTypeToTeachingSessions < ActiveRecord::Migration
  def up
    add_column :teaching_sessions, :format, :string
  end

  def down
  	remove_column :teaching_sessions, :format
  end
end
