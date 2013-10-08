class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students, {:id => false} do |t|
      t.string :student_num
      t.string :fname
      t.string :lname
      t.string :university
      t.string :course
      t.string :year
      t.string :email

      t.timestamps
    end
  end
end
