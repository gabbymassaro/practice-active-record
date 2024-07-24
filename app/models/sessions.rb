class Session < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :conference

  def print_details
    puts "#{speaker.name} is giving a session titled '#{title}' at #{conference.name}"
  end
end