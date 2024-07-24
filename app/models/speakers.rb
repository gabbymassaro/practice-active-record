class Speaker < ActiveRecord::Base
  has_many :sessions
  has_many :conferences, through: :sessions

  def gave_session(title)
    sessions.where(title: title).present?
  end

  def give_session_to(speaker, session)
    return if session.speaker != self

    session.update(speaker: speaker)
  end
end

# accepts a Speaker instance and a Session instance,
# changes the session's speaker to be the given speaker;
# your code should only make the change if the session
# belongs to the speaker who's giving it awayend

# changes session.speaker to session.new_speaker
# only change if the session.id belongs to the session.speaker
