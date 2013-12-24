class AddUserIdToClinician < ActiveRecord::Migration
  def up
  	add_column :clinicians, :user_id, :integer
  end
end
