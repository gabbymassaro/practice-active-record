class Conference < ActiveRecord::Base
  has_many :sessions
  has_many :speakers, through: :sessions
end
