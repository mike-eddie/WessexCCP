class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :student_num
      t.integer :question_id
      t.text :text
      t.string :string
      t.boolean :boolean
      t.integer :integer

      t.timestamps
    end
  end
end
