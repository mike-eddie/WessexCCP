class CreateTeachingFormats < ActiveRecord::Migration
  def change
    create_table :teaching_formats do |t|
      t.string :format

      t.timestamps
    end
  end
end
