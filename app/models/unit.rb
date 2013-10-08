class Unit < ActiveRecord::Base
  attr_accessible :title

  has_many :themes

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
    	Unit.create! row.to_hash
  	end
  end

end

