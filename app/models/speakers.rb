class Speaker < ActiveRecord::Base
  has_many :sessions
  has_many :conferences, through: :sessions
end
