class TeachingSession < ActiveRecord::Base
  attr_accessible :date, :title, :teaching_format_id

  has_many :attendances
  has_many :students, through: :attendances
  has_many :completed_outcomes
  belongs_to :teaching_format

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
    	TeachingSession.create! row.to_hash
  	end
  end

  def title_and_date
      "#{date} - #{title}"
  end

end
