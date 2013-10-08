class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.text :outcome
      t.string :topic_id

      t.timestamps
    end
  end
end
