class Student < ActiveRecord::Base
  attr_accessible :course, :email, :fname, :lname, :student_num, :university, :year

  set_primary_key :student_num

  belongs_to :user, :inverse_of => :student, :autosave => true

  has_many :attendances
  has_many :teaching_sessions, through: :attendances

  has_many :completed_outcomes

  validates :student_num, presence: true
  validates :fname, presence: true
  validates :lname, presence: true
  validates :university, presence: true
  validates :course, presence: true
  validates :year, presence: true


  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
    	Student.create! row.to_hash
  	end
  end

  def full_name
      "#{fname} #{lname}"
  end

end
