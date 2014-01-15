class Admin < ActiveRecord::Base
  attr_accessible :password, :user_id

  belongs_to :user, :inverse_of => :admin, :autosave => true

  validates :password, format: { with: /\ACCP&Nursling2014!\Z/,
    message: "admin secret password is incorrect" }
end
