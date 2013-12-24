class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :complete, :student_attributes, :clinician_attributes
  # attr_accessible :title, :body

  has_one :student, :inverse_of => :user, :autosave => true
  accepts_nested_attributes_for :student

  has_one :clinician, :inverse_of => :user, :autosave => true
  accepts_nested_attributes_for :clinician

  validates :role, presence: true

end
