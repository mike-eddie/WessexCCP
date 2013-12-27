class CreateCompletedSurveys < ActiveRecord::Migration
  def change
    create_table :completed_surveys do |t|
      t.integer :survey_id
      t.string :student_num
      t.boolean :complete

      t.timestamps
    end
  end
end
