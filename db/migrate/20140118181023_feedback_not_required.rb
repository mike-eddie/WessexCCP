class FeedbackNotRequired < ActiveRecord::Migration
  def change
  	add_column :teaching_sessions, :fb_not_required, :boolean
  end
end
