class Conference < ActiveRecord::Base
  has_many :sessions
  has_many :speakers, through: :sessions

  def add_session(speaker, title, duration)
    Session.create(title: title, duration: duration, conference: self, speaker: speaker)
  end

  def self.oldest_conference
    order(:year).first
  end
end
