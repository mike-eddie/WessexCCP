class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.boolean :btn
      t.string :btntext
      t.string :btnlink
      t.date :date
      t.string :colour

      t.timestamps
    end
  end
end
