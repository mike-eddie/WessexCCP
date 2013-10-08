class CreateTeachingSessions < ActiveRecord::Migration
  def change
    create_table :teaching_sessions do |t|
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end
