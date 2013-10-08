class Theme < ActiveRecord::Base
  attr_accessible :title, :unit_id

  belongs_to :unit
  has_many :topics

   def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
    	Theme.create! row.to_hash
  	end
  end
  
end
