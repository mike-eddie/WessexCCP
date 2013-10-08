class AlterTableOutcomes < ActiveRecord::Migration
  def up
  	connection.execute(%q{
       
       alter table outcomes
  		alter column topic_id type integer using cast(topic_id as integer)
  		
    })
  end

  def down
  end
end
