Conference.destroy_all
Speaker.destroy_all
Session.destroy_all

puts "🌱 Creating conferences..."
conference1 = Conference.create(name: "AI DevSummit", year: 2024)
conference2 = Conference.create(name: "Data Science Festival", year: 2019)
conference3 = Conference.create(name: "Dublin Tech Summit", year: 2005)
conference4 = Conference.create(name: "Ruby Con", year: 2017)


puts "🌱 Creating speakers..."
speaker1 = Speaker.create(name: "Rick")
speaker2 = Speaker.create(name: "Morty")
speaker3 = Speaker.create(name: "Mr. Meseeks")
speaker4 = Speaker.create(name: "Gazorpazop")

puts "🌱 Creating sessions..."
# Create sessions Here
Session.create(title: "Robots Are Taking Over", duration: 10, conference: conference1, speaker: speaker1)
Session.create(title: "Numbers Are Fun!", duration: 20, conference: conference2, speaker: speaker2)
Session.create(title: "Active Record Is Sweet", duration: 32, conference: conference3, speaker: speaker3)
Session.create(title: "Ruby Ruby Ruby Rubayyy", duration: 120, conference: conference4, speaker: speaker4)