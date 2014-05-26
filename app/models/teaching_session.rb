class TeachingSession < ActiveRecord::Base
  attr_accessible :date, :title, :teaching_format_id, :fb_not_required

  has_many :attendances
  has_many :students, through: :attendances
  has_many :completed_outcomes
  has_one :survey
  belongs_to :teaching_format

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
    	TeachingSession.create! row.to_hash
  	end
  end

  def title_and_date
      "#{date} - #{title}"
  end

  def long_title_date
    "#{title} - #{date}"
  end

  scope :of_format, lambda { |f| {:include => :teaching_format, :conditions => { :teaching_formats => { :format => f}}}}


end
