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
Hop.find_by(name: "CTZ").destroy
Hop.find_by(name: "Experimental 05256").destroy
Hop.find_by(name: "Experimental 06277").destroy
Hop.find_by(name: "Experimental 946").destroy
Hop.find_by(name: "Fuggles").destroy
Hop.find_by(name: "German Tradition").destroy
Hop.find_by(name: "Hallertauer Perle").destroy
Hop.find_by(name: "Hallertauer Select").destroy
Hop.find_by(name: "Heirloom").destroy
Hop.find_by(name: "Hop Extract").destroy
Hop.find_by(name: "Hop Shot").destroy
Hop.find_by(name: "Hops").destroy
Hop.find_by(name: "Kent Goldings").destroy
Hop.find_by(name: "Lexy Green C4").destroy

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

Hop.find_by(name: "Columbus").update_attributes(description: "Columbus is a descendant of Nugget. It is a high alpha variety and is primarily used for bittering purposes. Columbus is often referred to as CTZ, a trio of similar hops including Tomahawk and Zeus. Specific aroma descriptors include black pepper, licorice, curry and subtle citrus.", alpha_acid: 14.5, beta_acid: 4.5, country: "United States")

Hop.find_by(name: "Comet").update_attributes(description: "Selected in 1961 and released in 1974 by the USDA, Comet was originally utilized for its high alpha acid content and adapability to growing conditions in the Yakima Valley. Commercial production ceased in the early 1980s in favor of newer super-alpha hops, however, Comet has made a recent comeback, finding favor with some brewers in dual purpose applications for its subtle and unique, 'wild American' aroma. Has a grassy, grapefruit and citrus aroma profile.", alpha_acid: 8.0, beta_acid: 4.0, country: "United States")

Hop.find_by(name: "Delta").update_attributes(description: "Delta is a Fuggle-type hop, similar to a Willamette, but with a kick. It features a mild and pleasantly spicy aroma of with notes of melon and citrus. Delta was released in 2009 and is considered ideal for ale finishing.", alpha_acid: 5.5, beta_acid: 5.5, country: "United States")

Hop.find_by(name: "El Dorado").update_attributes(description: "El Dorado was developed in 2008 by CLS Farms in Washington State and was released in 2010. It has a bold, fruity aroma that includes notes of citrus, apricots, and even Jolly Rancher candy. El Dorado also has a strong alpha content, making it a good dual-purpose hop for bittering.", alpha_acid: 14.0, beta_acid: 7.0, country: "United States")

Hop.find_by(name: "Ella").update_attributes(description: "Ella is a sister-hop to Galaxy, with a much more subtle character. Ella can display floral and subtle spice notes, such as star anise, in small doses, which is best appreciated in lagers or pilsners. In larger additions or when dry hopping, Ella can exhibit tropical flavours which can be used to offset robust malt and yeast characters in many styles.", alpha_acid: 13.0, beta_acid: 5.0, country: "Australia")

Hop.find_by(name: "Enigma").update_attributes(description: "A very young hop, with its first generous crop in 2015, Enigma descends from the Swiss Tettnang variety, but exhibits a profile very much unlike its heritage. According to Hops Product Australia, where Enigma was cultivated, it is hard to pinpoint a description of Enigma, truly making it an 'enigma' of sorts. Tasting sessions have brought up qualities of ‘Pinot Gris’, ‘raspberries’, and ‘redcurrant’, as wel as rock melon and light tropical fruit. With a high alpha content, Enigma can be seen as a dual-purpose hop.", alpha_acid: 13.0, beta_acid: 5.0, country: "Australia")

Hop.find_by(name: "Equinox").update_attributes(country: "United States")

Hop.find_by(name: "Eureka").update_attributes(description: "I very new hop that some have described as Simcoe on steroids. It exhibits high aromas of citrus, tropical fruit, pine and resin. More specfic flavors and aromas include black currant, dark fruit, strong herbal notes, pine tree, mint, pungent, light grapefruit rind, citrus and tangerine.", alpha_acid: 17.5, beta_acid: 5.0, country: "United States")

Hop.find_by(name: "Falconer's Flight").update_attributes(description: "Developed by Hopunion LLC in 2010, Falconer's Flight hop pellets are an exclusive proprietary hop blend created to honor and support the legacy of Northwest brewing legend, Glen Hay Falconer. Proceeds from each Falconer's Flight purchase is contributed to the Glen Hay Falconer Foundation. Typically used as an aroma hop, specific descriptors include distinct tropical, floral, lemon and grapefruit characteristics.", alpha_acid: 9.5, beta_acid: 4.0, country: "United States")

Hop.find_by(name: "French Strisserspalt").update_attributes(name: "French Strisselspalt", description: "Strisselpalt is from the Alsace area of France, near Strasbourg. It is globally accepted as a good aroma hop with similar characteristics to Hersbrucker. Specific aroma descriptors include spicy, citrusy, floral, fruity and herbal.", alpha_acid: 2.0, beta_acid: 4.0, country: "France")

Hop.find_by(name: "French Triskel").update_attributes(description: "Developed in 2006, Triskel contains many of the same characteristics as Strisselspalt but displays a more pronounced flavor profile. Mainly used as an aroma hop, specific descriptors include strong floral, herbal, citrus and spicy.", alpha_acid: 8.0, beta_acid: 4.0, country: "France")

Hop.find_by(name: "Galaxy").update_attributes(description: "With origins in the mid-1990s, Galaxy grew out of an experiment to breed high alpha content Australia hops with European cultivars, hoping to create a child that exhibited high alpha content while retaining some European characteristics. Typicaly used as a late-addition hop for aroma, Galaxy's high alpha content also makes it a good dual-purpose hop for bittering. Specific aroma descriptors include distinct passionfruit, peach and clean citrus aromas.", alpha_acid: 12.0, beta_acid: 5.0, country: "Australia")

Hop.find_by(name: "German Magnum").update_attributes(description: "Bred at the Hop Research Center in Hüll in 1980 and released in 1993, Magnum is a daughter of Galena. It is a high alpha variety with some spice and fruit characteristics. Used as a bittering hop. Magnum also has aromas reminiscient of apple and pepper.", alpha_acid: 12.0, beta_acid: 5.0, country: "Germany")

Hop.find_by(name: "German Mandarina Bavaria").update_attributes(description: "Bred at the Hop Research Institute in Hüll, Mandarina Bavaria is a daughter of Cascade and displays pleasant fruitiness in finished beers. Specific aroma descriptors include fruity and citrus, specifically distinct tangerine and citrus flavors.")

Hop.find_by(name: "German Opal").update_attributes(description: "Opal is a dual-purpose hop that is used in traditional German beer styles such as Pilsner, Hefeweizen, and Helles. It was developed at the Hüll Hops Research Institute in Germany and was made commercially available in 2004. Opal hops offer sweet, spicy and slightly peppery flavors, as well as a light orange blossom aroma.", alpha_acid: 13.0, beta_acid: 4.0, country: "Germany")

Hop.find_by(name: "German Perle").update_attributes(description: "Bred at the Hüll Hop Research Institute from the English Northern Brewer variety. German Perle hops have a moderately intense, hoppy, slightly fruity and spicy profile, for mildly bittering pale ale, porter and lager. It is compared to Hallertauer Mittelfrüher. Specific aroma descriptors include herbal and spicy with delicate floral, fruit and mint tones.", alpha_acid: 4.0, beta_acid: 2.5, country: "Germany")

Hop.find_by(name: "German Select").update_attributes(description: "Bred at the Hop Research Center in Hüll and released in 1993, Select is often referred to as 'Spalter Select' or as 'Hallertauer Select'.", alpha_acid: 4.0, beta_acid: 2.5, country: "Germany")

Hop.find_by(name: "Golding (American)").update_attributes(description: "U.S. Golding has very similar qualities as its English hops siblings. It has low alpha acid rating, making it a hops suitable for aroma additions.  Even though it is grown in the U.S. this variety still etches a classic English style into the brew. Its bitterness is faint, while its aroma is pleasant and fragrant, usually floral.")

Hop.find_by(name: "Hallertau Hallertauer Mittelfrüher").update_attributes(name: "Hallertauer Mittelfrüher", description: "Hallertauer Mittelfrüher or Hallertauer Mittelfrüh is the landrace cultivar of the Hallertau, the premier hop growing region of Germany. When grown in the Hallertau, these hops are properly called Hallertau Hallertauer Mittelfrüher, but this is usually shortened to Hallertau Hallertauer. However, homebrewers should be aware that 'Hallertau Hallertauer' is also sometimes used to describe other aroma hops grown in the Hallertau, especially Hallertauer Gold. These hops are one of four hops almost always considered to be noble hops, and are much prized, especially by continental European brewers, for their flavor and aroma characteristics. However, because of their extreme susceptibility to verticillium wilt, true Hallertauer Mittelfrüher is disappearing from the Hallertau. This has led to efforts to breed wilt-resistant hops with similar characteristics, to grow the Hallertauer Mittelfrüher in areas outside of the Hallertau, especially in Tettnang, Hersbruck, and Spalt, and to grow other aroma varieties in the Hallertau, with the result that the name 'Hallertau' or 'Hallertauer', once synonymous with this variety, has been applied to so many hop varieties that it sometimes becomes confusing. The true Hallertau Hallertauer Mittelfrüher has the mild, pleasantly spicy aroma and flavor described simply as 'noble' and characteristic of the great German lagers.")

Hop.find_by(name: "Hallertau Hallertauer Tradition").update_attributes(name: "Hallertauer Tradition", description: "Hallertauer Tradition is a German aroma variety, derived from Hallertauer Gold, which was bred as a replacement for Hallertau Hallertauer Mittelfrüher. It combines a flavor said to be similar to Hallertauer Mittelfrüher with significantly improved disease and pest resistance and higher yield. As with Hallertau Hallertauer Mittelfrüher, the 'Hallertauer' in Hallertauer Tradition is part of the name of the cultivar, and hops of this cultivar grown outside the may also be referred to as Hallertauer Tradition, although it is sometimes simply called Tradition. However, because this variety is currently grown primarily in the Hallertau, the full name is not generally used, and the hop is generally sold simply as Hallertauer Tradition even if it was grown in the Hallertau.")

Hop.find_by(name: "Hallertauer (American)").update_attributes(description: "Small quantities of the true Hallertauer Mittelfrüher cultivar are grown in the United States. However, just as with other Hallertauer hop varieties, it can be difficult to know what exactly you are getting; Hallertauer Gold, Mount Hood, and Liberty, among others, are sometimes sold as 'U.S. Hallertauer'. Even the true Hallertauer Mittelfrüher is not considered to have a true noble hop quality when grown in the United States.")

Hop.find_by(name: "Hallertauer Herkules").update_attributes(description: "Bred at the Hop Research Center in Hüll, Germany, Herkules imparts robust, hoppy flavors. Specific aroma descriptors include robust hoppy with some citrus and melon.", alpha_acid: 12.0, beta_acid: 4.0, country: "Germany")

Hop.find_by(name: "Hallertauer Herkules").update_attributes(description: "Originating from the Hersbruck region of Southern Germany, Hersbrucker has expanded and is now widely grown throughout the Hallertau and Spalt regions. It displays a delicate aroma profile that is often compared to other noble varieties. Typically used as an aroma hop, its descriptors include hay, tobacco and orange.", alpha_acid: 1.5, beta_acid: 2.5, country: "Germany")

Hop.find_by(name: "Hallertauer Magnum").update_attributes(description: "Derived from German hops including Hallertauer Mittelfrüher and Galena, Hallertauer Magnum, sometimes just called Magnum, is a bittering hop cultivar with a clean German flavor and aroma profile, excellent for bittering any kind of German beer. It is one of the most popular bittering hops in Germany, and is also grown in the United States. Because 'Hallertauer' is part of the cultivar name and not necessarily an indication of where the hop was grown, you should not assume that all Hallertauer Magnum hops were grown in the Hallertau. Magnum hops sold in the United States are often labeled as 'Yakima Magnum'; it is unclear whether this represents a separate cultivar or simply Yakima Valley-grown Hallertauer Magnum.")

Hop.find_by(name: "Helga").update_attributes(description: "Bred in Australia in 1986 and formerly known as Southern Hallertau, Helga is a descendant of Hallertau Mittelfrüh. A dual-purpose hop, Helga’s delicate floral and subtle herbal aroma is an excellent companion to stronger malt driven ales and lagers.", alpha_acid: 5.5, beta_acid: 5.0, country: "Australia")

Hop.find_by(name: "Huller Bitterer").update_attributes(description: "This variety was the prodigy of the Hull Hop Research Institute in Germany, and was prided for the first wilt resistant variety to come from the program. Its difficult to find even traces of this hops with exceptions of historical context. Huller Bitterer was a dual use hops and desipte being on the lower side of bitterness, it is still known for its clean bittering qualities. Hüller Bitterer is also known for its aromatic qualities.", alpha_acid: 4.5, beta_acid: 5.0, country: "Germany")

Hop.find_by(name: "Idaho 7").update_attributes(description: "A very new variety, sometimes referred to as '007: The Golden Hop.' Sierra Nevada uses this hop in one of their single hop series beers, descriving Idaho 7 as having a 'Complex fruity aromas of orange and apricot mesh with hints of black tea-like character and a pleasant fresh herbal bouquet.'", alpha_acid: 14.0, beta_acid: 4.0, country: "United States")

Hop.find_by(name: "Jarrylo").update_attributes(description: "Jarrylo is named after Jarilo, the Slavic god of fertility and springtime. Jarrylo’s banana, pear, spice aroma translates perfectly to Pale Ales, Saisons and Belgians.", alpha_acid: 15.0, beta_acid: 6.0, country: "United States")

Hop.find_by(name: "Junga").update_attributes(description: "Junga has a very high bitter value and a good bitter quality like German Magnum but with nice aroma.", alpha_acid: 11.0, beta_acid: 5.0, country: "Poland")

Hop.find_by(name: "Lemon Drop").update_attributes(description: "Lemon Drop boasts fantastic lemony-citrus aroma for late kettle additions or dry hopping. Originally released by HopSteiner in 2012 as Experimental #01210, this Super Cascadian hop has a unique combination of fruity and herbal notes, ideal for IPAs, Pale Ales and Saisons.", alpha_acid: 5.0, beta_acid: 4.0, country: "United States")







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
