class ConvertToString < ActiveRecord::Migration
  def up
  	connection.execute(%q{
       
        alter table themes
        alter column unit_id type integer using cast(unit_id as integer)
  		
    })
  end

  def down
  end
end
