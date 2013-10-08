class AddTeachingFormatIdToTeachingSession < ActiveRecord::Migration
  def change
    add_column :teaching_sessions, :teaching_format_id, :integer
  end
end
