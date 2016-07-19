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
Hop.find_by(name: "Athanum").destroy
Hop.find_by(name: "Amarillo Gold").destroy
Hop.find_by(name: "Azzeca").destroy
Hop.find_by(name: "Experimental 05256").destroy
Hop.find_by(name: "Experimental 06277").destroy
Hop.find_by(name: "Experimental 946").destroy
Hop.find_by(name: "Hop Extract").destroy
Hop.find_by(name: "Hop Shot").destroy
Hop.find_by(name: "Hops").destroy

Hop.find_by(name: "Alchemy").update_attributes(description: "Alchemy hops are not a single variety, but rather several different varieties custom blended and packaged specifically for Widmer Brewing Company. Currently the blend is combination of Warrior and Millennium, though in past years it's also included a small percentage of Horizon hops as well. All three varieties are high alpha, low cohumulone cultivars.", country: "United States")

Hop.find_by(name: "Apollo").update_attributes(description: "Apollo is a newer super high-alpha variety with a low cohumulone level that makes it an excellent bittering hop. Used toward the end of the boil it can contribute flavors and aromas of citrus, grapefruit, orange, pine, resin, and cannabis. Recommended for use in Pale Ales, Extra Pale Ales, and IPAs.", alpha_acid: 15.0, beta_acid: 5.5, country: "United States")

Hop.find_by(name: "Aquila").update_attributes(description: "Aquila was developed in the U.S. and was established in three-acre commercial trials throughout the Northwest in 1988. It was officially released in 1994 but due to its overly high cohumulone content, its use was been considered limited and it is no longer available commercially. North American brewing giant Anheuser Busch lost interest in the variety in 1996, ultimately spelling a death knell for Aquila’s commercial record.", alpha_acid: 7.0, beta_acid: 4.0, country: "United States")

Hop.find_by(name: "Aramis").update_attributes(description: "Aramis is an aroma hop that has inherited its characteristics from its mother variety, Strisselspalt. It contains a noticably higher degree of alpha acids than Strisselspalt. Strong, with a hint of delicateness.", alpha_acid: 8.0, beta_acid: 4.0, country: "France")

Hop.find_by(name: "Argentine Cascade").update_attributes(description: "Unlike the American Cascade, the Argentine Cascade has a mellow character with notes of lemongrass, pepper and spice. It is not considered interchangeable with the American Cascade, which has a very different profile. Argentinian Cascade is often compared to a Hallertau or a Tettnang.", alpha_acid: 3.2, beta_acid: 4.5, country: "Argentina")

Hop.find_by(name: "Aurora").update_attributes(description: "A diploid hybrid of Northern Brewer and a TG seedling of unknown origin, Aurora displays an intense yet pleasant aroma in finished beers. It is also known as Super Styrian. Specific aroma descriptors include noble characteristics.", alpha_acid: 7.0, beta_acid: 2.7, country: "United States")

Hop.find_by(name: "Auscha (Saaz)").update_attributes(description: "Auscha is one of the regions in the Czech Republic where Saaz hops are grown. See the article on Czech Saaz hops for more information.", alpha_acid: 3.0, beta_acid: 7.0, country: "Czech Republic")

Hop.find_by(name: "Australian Dr. Rudi").update_attributes(name: "Dr. Rudi", description: "Developed at the New Zealand Horticultural Research Centre (now New Zealand Institute for Plant and Food Research) and released in 1976 as 'Super Alpha', Dr. Rudi is a triploid variety bred from New Zealand Smoothcone. Its name was changed to Dr. Rudi in 2012. Dr. Rudi works well in single-hopped beers or in conjunction with multiple aroma varieties. Specific aroma descriptors include resin, pine, and lemongrass.", alpha_acid: 11.0, beta_acid: 7.5, country: "New Zealand")

Hop.find_by(name: "Azacca").update_attributes(description: "Azacca, named for the Haitian god of agriculture, is a hop big in citrus and tropical fruit tones. It’s excellent aromatic qualities have quickly made Azacca a go-to hop for late and dry hop additions in varying styles of beer. Aromas include mango, papaya, orange, grapefruit, lemon, piney, spicy, pineapple, grassy, tropical fruit, and citrus.", alpha_acid: 15.0, beta_acid: 4.5, country: "United States")

Hop.find_by(name: "Banner").update_attributes(description: "Banner was bred from a Brewer’s Gold seedling in the early 1970’s through open pollination, however, its first test plot was abandoned due to severe mildew problems. It was finally released in 1996 along with its half-sister Aquila when Anheurser Busch expressed interest in using it. After a few years of evaluation, though, it was eliminated from further testing. Banner is known to have moderately high alpha acids, a pleasant aroma and a good yield but exhibits poor storability, which along with its mildew susceptibility makes it largely unviable.", alpha_acid: 10.0, beta_acid: 6.0, country: "United States")

Hop.find_by(name: "Belma").update_attributes(description: "A recent hop grown in the Yakima Valley region, Belma is a very clean hop, with a very orange, slight grapefruit, tropical  pineapple, strawberry, and melon aroma. It has seen much activity amongst homebrewers.", alpha_acid: 9.5, country: "United States")

Hop.find_by(name: "Boadicea").update_attributes(description: "Bred at Wye College and released in 2004, Boadicea is a dwarf variety derived from open pollination of a second-generation wild, Japanese female hop. Its aroma is very mild with subtle grass, floral and fruit characteristics. Specific aroma descriptors include floral, orchard blossom and ripe fruit.", alpha_acid: 8.0, beta_acid: 3.2, country: "United Kingdom")

Hop.find_by(name: "Bobek").update_attributes(description: "This Slovenian varietal is widely utilized for its noble aroma of delicate spicy, floral, and piney notes.", alpha_acid: 3.5, beta_acid: 4.0, country: "Slovenia")

Hop.find_by(name: "Bor").update_attributes(description: "Grown in the Yakima Valley region, BOR has a distinclty European aroma profile, however, it exhibits poor yield. It is being used in breeding to pass on its low cohumulone rate, however, due to its low alpha acid content, it has not gained much traction in the commerical market.", alpha_acid: 2.0, beta_acid: 3.0, country: "United States")

Hop.find_by(name: "California Ivanhoe").update_attributes(description: "Ivanhoe is a European aroma type and has been compared to a more moderate Cascade. It features a lovely, mellow aroma of citrus and pine, but with heady floral and herbal notes.", alpha_acid: 7.3, beta_acid: 4.6, country: "United States")

Hop.find_by(name: "Calypso").update_attributes(description: "Calypso is a Yakima Valley bred, dual-purpose diploid hop. It offers brilliant flavor and aroma, covering a wide spectrum of specific descriptors: lemons, cherry blossoms, black pepper, bitter orange, mint, hints of tropical fruit and sappy, pronounced pear.", alpha_acid: 12.0, beta_acid: 5.0, country: "United States")

Hop.find_by(name: "Celeia").update_attributes(description: "A hybrid of Styrian Golding, Aurora and a Slovenia wild hop, Celeia is known for its noble characteristics. It has widespread usage in lager and ale-style beers. It has earthy and herbal aromas and is a dual-purpose hop.", alpha_acid: 3.0, beta_acid: 3.0, country: "Slovenia")

Hop.find_by(name: "Citra").update_attributes(description: "Developed by Hop Breeding Company and released in 2007, Citra features fairly high alpha acids and total oil contents with a low percentage of co-humulone. It has citrus and tropical fruit aromas such as grapefruit, melon, lime, gooseberry, passion fruit and lychee.", country: "United States")

Hop.find_by(name: "Cluster").update_attributes(description: "Cluster is one of the oldest hop varieties grown in the United States and until the late 1970s, accounted for the majority of the country’s hop acreage. Cluster is an excellent dual purpose hop and is often used in the reproduction of historical beer styles. Specific aroma descriptors include floral, earthy and sweet fruit.", alpha_acid: 6.0, beta_acid: 4.0, country: "United States")

Hop.find_by(name: "Cobb").update_attributes(description: "A high-yielding aroma hop, it bears a classic English flavor and is lightly hoppy. It is among the varieties known as Goldings. Cobb was in demand for copper and dry hopping in traditional English ales though its production has been curtailed now due to a susceptibility to wilt and mildew.", alpha_acid: 4.4, beta_acid: 1.9, country: "United Kingdom")

Hop.find_by(name: "Cobb").update_attributes(description: "A high-yielding aroma hop, it bears a classic English flavor and is lightly hoppy. It is among the varieties known as Goldings. Cobb was in demand for copper and dry hopping in traditional English ales though its production has been curtailed now due to a susceptibility to wilt and mildew.", alpha_acid: 4.4, beta_acid: 1.9, country: "United Kingdom")




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
