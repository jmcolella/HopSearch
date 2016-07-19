all_hops = BREWERY_DB_CLIENT.hops.all

all_hops.each do |hop|
  new_hop = Hop.create!(name: hop.name,
                        description: hop.description,
                        alpha_acid: hop.alpha_acid_min,
                        beta_acid: hop.beta_acid_max)

  if hop.country != nil
    new_hop.update_attributes(country_of_origin: hop.country.display_name)
  end
end

Hop.find_by(name: "#06300").destroy
Hop.find_by(name: "Aged / Debittered Hops (Lambic)").destroy
Hop.find_by(name: "Ahtanum").destroy
Hop.find_by(name: "Experimental 05256").destroy
Hop.find_by(name: "Experimental 06277").destroy
Hop.find_by(name: "Experimental 946").destroy
Hop.find_by(name: "Hop Extract").destroy
Hop.find_by(name: "Hop Shot").destroy
Hop.find_by(name: "Hops").destroy

75.times do
  User.create!(first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               email: Faker::Internet.safe_email,
               biography: Faker::Lorem.sentences(4),
               password: "password")
end

200.times do
  Comment.create!(body: Faker::Lorem.sentence,
                  user_id: rand(1..75),
                  hop_id: rand(1..193))
end

100.times do
  Favorite.create!(user_id: rand(1..75),
                   hop_id: rand(1..193))
end
