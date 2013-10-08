class AlterTableTopics < ActiveRecord::Migration
  def up
  	connection.execute(%q{
       
        alter table topics 
  		alter column theme_id type integer using cast(theme_id as integer)
  		
    })
  end

  def down
  end
end