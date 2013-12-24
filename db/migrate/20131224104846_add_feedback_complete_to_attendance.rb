class AddFeedbackCompleteToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :fb_complete, :boolean
    add_column :attendances, :feedback_id, :string
  end
end
