class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :avatar, :complete, :student_attributes, :clinician_attributes
  # attr_accessible :title, :body

  has_one :student, :inverse_of => :user, :autosave => true
  accepts_nested_attributes_for :student

  has_one :admin, :inverse_of => :user, :autosave => true

  has_one :clinician, :inverse_of => :user, :autosave => true
  accepts_nested_attributes_for :clinician

  validates :role, presence: true

  has_attached_file :avatar, 
      :styles => {:medium => "100x100>", :small => "40x40" },
      :path => ":rails_root/app/assets/images/:attachment/:id/:style/:filename",
      :default_url => 'avatar_missing.png',
      :url => "/assets/:attachment/:id/:style/:filename"

  def to_s
    if role = "Student"
      @student = Student.where("user_id = ?", id).first
      name = @student.fname + " " + @student.lname
    end

    return name
  end

end
