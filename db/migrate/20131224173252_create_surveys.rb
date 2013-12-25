class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :teaching_session_id

      t.timestamps
    end
  end
end
