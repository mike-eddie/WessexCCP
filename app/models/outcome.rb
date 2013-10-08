class Outcome < ActiveRecord::Base
  attr_accessible :outcome, :topic_id

  belongs_to :topic

  has_many :completed_outcomes

    def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
    	Outcome.create! row.to_hash
  	end
  end
  
end
