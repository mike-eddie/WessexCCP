class NewStudentsModel < ActiveRecord::Migration
  def up
  	create_table :students, {:id => false, :primary_key => :student_num} do |t|
      t.string :student_num
      t.string :fname
      t.string :lname
      t.string :university
      t.string :course
      t.integer :year
      t.string :email

      t.timestamps
  	end

  end

  def down
  end
end
