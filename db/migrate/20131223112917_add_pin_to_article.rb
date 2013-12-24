class AddPinToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :pin, :boolean
  end
end
