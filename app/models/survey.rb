class Survey < ActiveRecord::Base
  attr_accessible :teaching_session_id, :questions_attributes, :_destroy

  has_many :questions
  belongs_to :teaching_session

  accepts_nested_attributes_for :questions, :reject_if => :all_blank, :allow_destroy => true
end
