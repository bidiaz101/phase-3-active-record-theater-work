puts "Creating roles..."

Role.create(character_name: "Buzz Lightyear")
Role.create(character_name: "Mario")
Role.create(character_name: "Dr. Strange")
Role.create(character_name: "Luigi")
Role.create(character_name: "Woody")
Role.create(character_name: "Spider-man")
Role.create(character_name: "Mr. Rogers")

puts "Creating auditions..."

30.times do
    Audition.create(actor: Faker::Name.name , location: Faker::Address.city, phone: rand(1000000000..9999999999), hired: rand(0..1), role_id: rand(1..6))
end

puts "Seeded!"
