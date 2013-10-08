class Topic < ActiveRecord::Base
  attr_accessible :theme_id, :title

  belongs_to :theme
  has_many :outcomes

   def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
    	Topic.create! row.to_hash
  	end
  end

end
