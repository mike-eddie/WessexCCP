class Question < ActiveRecord::Base
  attr_accessible :required, :survey_id, :text, :qtype, :responses_attributes, :_destroy, :response_attributes, :qorder

  belongs_to :survey
  has_many :responses

end
