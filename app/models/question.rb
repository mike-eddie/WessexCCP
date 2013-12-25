class Question < ActiveRecord::Base
  attr_accessible :required, :survey_id, :text, :qtype, :responses_attributes, :_destroy

  belongs_to :survey

end
