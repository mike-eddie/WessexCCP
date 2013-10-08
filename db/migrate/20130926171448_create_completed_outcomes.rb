class CreateCompletedOutcomes < ActiveRecord::Migration
  def change
    create_table :completed_outcomes do |t|
      t.string :teaching_session_id
      t.string :outcome_id

      t.timestamps
    end
  end
end
