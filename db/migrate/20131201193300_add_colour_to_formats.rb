class AddColourToFormats < ActiveRecord::Migration
  def up
  	add_column :teaching_formats, :colour, :string
  end

  def down
  	remove_column :teaching_formats, :colour
  end
end
