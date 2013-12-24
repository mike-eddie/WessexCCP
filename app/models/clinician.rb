class Clinician < ActiveRecord::Base
  attr_accessible :email, :employer, :fname, :grade, :lname, :profession, :user_id, :user_attributes

  belongs_to :user, :inverse_of => :clinician, :autosave => true
  accepts_nested_attributes_for :user

end
