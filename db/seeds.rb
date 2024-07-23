Conference.destroy_all
Speaker.destroy_all

puts "🌱 Creating conferences..."
Company.create(name: "AI DevSummit", year: 2024)
Company.create(name: "Data Science Festival", year: 2019)
Company.create(name: "Dublin Tech Summit", year: 2005)
Company.create(name: "Ruby Con", year: 2017)


puts "🌱 Creating speakers..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "🌱 Creating sessions..."
# Create freebies Here