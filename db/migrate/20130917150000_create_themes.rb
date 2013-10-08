class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :title
      t.string :unit_id

      t.timestamps
    end
  end
end
