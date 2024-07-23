Conference.destroy_all
Speaker.destroy_all

puts "🌱 Creating conferences..."
Conference.create(name: "AI DevSummit", year: 2024)
Conference.create(name: "Data Science Festival", year: 2019)
Conference.create(name: "Dublin Tech Summit", year: 2005)
Conference.create(name: "Ruby Con", year: 2017)


puts "🌱 Creating speakers..."
Speaker.create(name: "Rick")
Speaker.create(name: "Morty")
Speaker.create(name: "Mr. Meseeks")
Speaker.create(name: "Gazorpazop")

puts "🌱 Creating sessions..."
# Create sessions Here