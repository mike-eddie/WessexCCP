class CreateClinicians < ActiveRecord::Migration
  def change
    create_table :clinicians do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :profession
      t.string :grade
      t.string :employer

      t.timestamps
    end
  end
end
