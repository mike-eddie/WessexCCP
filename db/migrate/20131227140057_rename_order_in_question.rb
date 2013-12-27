class RenameOrderInQuestion < ActiveRecord::Migration
  def up
  	rename_column :questions, :order, :qorder
  end

  def down
  end
end
