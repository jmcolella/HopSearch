all_hops = BREWERY_DB_CLIENT.hops.all

all_hops.each do |hop|
  if hop.name == "#06300" || hop.name == "Aged / Debittered Hops (Lambic)" || hop.name == "Athanum" || hop.name == "Amarillo Gold" || hop.name == "Azzeca" || hop.name == "Caramel Malt" || hop.name == "CTZ" || hop.name == "Experimental 05256" || hop.name == "Experimental 06277" || hop.name == "Experimental 946" || hop.name == "Fuggles" || hop.name == "German Tradition" || hop.name == "Hallertauer Perle" || hop.name == "Hallertauer Select" || hop.name == "Heirloom" || hop.name == "Hop Extract" || hop.name == "Hop Shot" || hop.name == "Hops" || hop.name == "Kent Goldings" || hop.name == "Lexy Green C4" || hop.name == "Marco Polo" || hop.name == "New Zealand Motueka" || hop.name == "New Zealand Sauvin" || hop.name == "Noble" || hop.name == "PIKE" || hop.name == "Premiant (Saaz)" || hop.name == "Record" || hop.name == "Revolution" || hop.name == "Spalt" || hop.name == "Styrian Aurora" || hop.name == "Styrian Bobeks" || hop.name == "Super Styrians" || hop.name == "Tomahawk" || hop.name == "Tradition" || hop.name == "Trschitz (Saaz)" || hop.name == "Wye Target" || hop.name == "Yakima Goldings" || hop.name == "Yakima Magnum" || hop.name == "Yakima Willamette"
    next
  else
    new_hop = Hop.create!(name: hop.name,
                        description: hop.description,
                        alpha_acid: hop.alpha_acid_min,
                        beta_acid: hop.beta_acid_max)
  end

  if hop.country != nil
    new_hop.update_attributes(country_of_origin: hop.country.display_name)
  end
end

Hop.find_by(name: "Alchemy").update_attributes(description: "Alchemy hops are not a single variety, but rather several different varieties custom blended and packaged specifically for Widmer Brewing Company. Currently the blend is combination of Warrior and Millennium, though in past years it's also included a small percentage of Horizon hops as well. All three varieties are high alpha, low cohumulone cultivars.", country_of_origin: "United States")

Hop.find_by(name: "Apollo").update_attributes(description: "Apollo is a newer super high-alpha variety with a low cohumulone level that makes it an excellent bittering hop. Used toward the end of the boil it can contribute flavors and aromas of citrus, grapefruit, orange, pine, resin, and cannabis. Recommended for use in Pale Ales, Extra Pale Ales, and IPAs.", alpha_acid: 15.0, beta_acid: 5.5, country_of_origin: "United States")

Hop.find_by(name: "Aquila").update_attributes(description: "Aquila was developed in the U.S. and was established in three-acre commercial trials throughout the Northwest in 1988. It was officially released in 1994 but due to its overly high cohumulone content, its use was been considered limited and it is no longer available commercially. North American brewing giant Anheuser Busch lost interest in the variety in 1996, ultimately spelling a death knell for Aquila’s commercial record.", alpha_acid: 7.0, beta_acid: 4.0, country_of_origin: "United States")

Hop.find_by(name: "Aramis").update_attributes(description: "Aramis is an aroma hop that has inherited its characteristics from its mother variety, Strisselspalt. It contains a noticably higher degree of alpha acids than Strisselspalt. Strong, with a hint of delicateness.", alpha_acid: 8.0, beta_acid: 4.0, country_of_origin: "France")

Hop.find_by(name: "Argentine Cascade").update_attributes(description: "Unlike the American Cascade, the Argentine Cascade has a mellow character with notes of lemongrass, pepper and spice. It is not considered interchangeable with the American Cascade, which has a very different profile. Argentinian Cascade is often compared to a Hallertau or a Tettnang.", alpha_acid: 3.2, beta_acid: 4.5, country_of_origin: "Argentina")

Hop.find_by(name: "Aurora").update_attributes(description: "A diploid hybrid of Northern Brewer and a TG seedling of unknown origin, Aurora displays an intense yet pleasant aroma in finished beers. It is also known as Super Styrian. Specific aroma descriptors include noble characteristics.", alpha_acid: 7.0, beta_acid: 2.7, country_of_origin: "United States")

Hop.find_by(name: "Auscha (Saaz)").update_attributes(description: "Auscha is one of the regions in the Czech Republic where Saaz hops are grown. See the article on Czech Saaz hops for more information.", alpha_acid: 3.0, beta_acid: 7.0, country_of_origin: "Czech Republic")

Hop.find_by(name: "Australian Dr. Rudi").update_attributes(name: "Dr. Rudi", description: "Developed at the New Zealand Horticultural Research Centre (now New Zealand Institute for Plant and Food Research) and released in 1976 as 'Super Alpha', Dr. Rudi is a triploid variety bred from New Zealand Smoothcone. Its name was changed to Dr. Rudi in 2012. Dr. Rudi works well in single-hopped beers or in conjunction with multiple aroma varieties. Specific aroma descriptors include resin, pine, and lemongrass.", alpha_acid: 11.0, beta_acid: 7.5, country_of_origin: "New Zealand")

Hop.find_by(name: "Azacca").update_attributes(description: "Azacca, named for the Haitian god of agriculture, is a hop big in citrus and tropical fruit tones. It’s excellent aromatic qualities have quickly made Azacca a go-to hop for late and dry hop additions in varying styles of beer. Aromas include mango, papaya, orange, grapefruit, lemon, piney, spicy, pineapple, grassy, tropical fruit, and citrus.", alpha_acid: 15.0, beta_acid: 4.5, country_of_origin: "United States")

Hop.find_by(name: "Banner").update_attributes(description: "Banner was bred from a Brewer’s Gold seedling in the early 1970’s through open pollination, however, its first test plot was abandoned due to severe mildew problems. It was finally released in 1996 along with its half-sister Aquila when Anheurser Busch expressed interest in using it. After a few years of evaluation, though, it was eliminated from further testing. Banner is known to have moderately high alpha acids, a pleasant aroma and a good yield but exhibits poor storability, which along with its mildew susceptibility makes it largely unviable.", alpha_acid: 10.0, beta_acid: 6.0, country_of_origin: "United States")

Hop.find_by(name: "Belma").update_attributes(description: "A recent hop grown in the Yakima Valley region, Belma is a very clean hop, with a very orange, slight grapefruit, tropical  pineapple, strawberry, and melon aroma. It has seen much activity amongst homebrewers.", alpha_acid: 9.5, country_of_origin: "United States")

Hop.find_by(name: "Boadicea").update_attributes(description: "Bred at Wye College and released in 2004, Boadicea is a dwarf variety derived from open pollination of a second-generation wild, Japanese female hop. Its aroma is very mild with subtle grass, floral and fruit characteristics. Specific aroma descriptors include floral, orchard blossom and ripe fruit.", alpha_acid: 8.0, beta_acid: 3.2, country_of_origin: "United Kingdom")

Hop.find_by(name: "Bobek").update_attributes(description: "This Slovenian varietal is widely utilized for its noble aroma of delicate spicy, floral, and piney notes. Also known as Styrian Bobek", alpha_acid: 3.5, beta_acid: 4.0, country_of_origin: "Slovenia")

Hop.find_by(name: "Bor").update_attributes(description: "Grown in the Yakima Valley region, BOR has a distinclty European aroma profile, however, it exhibits poor yield. It is being used in breeding to pass on its low cohumulone rate, however, due to its low alpha acid content, it has not gained much traction in the commerical market.", alpha_acid: 2.0, beta_acid: 3.0, country_of_origin: "United States")

Hop.find_by(name: "California Ivanhoe").update_attributes(description: "Ivanhoe is a European aroma type and has been compared to a more moderate Cascade. It features a lovely, mellow aroma of citrus and pine, but with heady floral and herbal notes.", alpha_acid: 7.3, beta_acid: 4.6, country_of_origin: "United States")

Hop.find_by(name: "Calypso").update_attributes(description: "Calypso is a Yakima Valley bred, dual-purpose diploid hop. It offers brilliant flavor and aroma, covering a wide spectrum of specific descriptors: lemons, cherry blossoms, black pepper, bitter orange, mint, hints of tropical fruit and sappy, pronounced pear.", alpha_acid: 12.0, beta_acid: 5.0, country_of_origin: "United States")

Hop.find_by(name: "Celeia").update_attributes(description: "A hybrid of Styrian Golding, Aurora and a Slovenia wild hop, Celeia is known for its noble characteristics. It has widespread usage in lager and ale-style beers. It has earthy and herbal aromas and is a dual-purpose hop.", alpha_acid: 3.0, beta_acid: 3.0, country_of_origin: "Slovenia")

Hop.find_by(name: "Citra").update_attributes(description: "Developed by Hop Breeding Company and released in 2007, Citra features fairly high alpha acids and total oil contents with a low percentage of co-humulone. It has citrus and tropical fruit aromas such as grapefruit, melon, lime, gooseberry, passion fruit and lychee.", country_of_origin: "United States")

Hop.find_by(name: "Cluster").update_attributes(description: "Cluster is one of the oldest hop varieties grown in the United States and until the late 1970s, accounted for the majority of the country’s hop acreage. Cluster is an excellent dual purpose hop and is often used in the reproduction of historical beer styles. Specific aroma descriptors include floral, earthy and sweet fruit.", alpha_acid: 6.0, beta_acid: 4.0, country_of_origin: "United States")

Hop.find_by(name: "Cobb").update_attributes(description: "A high-yielding aroma hop, it bears a classic English flavor and is lightly hoppy. It is among the varieties known as Goldings. Cobb was in demand for copper and dry hopping in traditional English ales though its production has been curtailed now due to a susceptibility to wilt and mildew.", alpha_acid: 4.4, beta_acid: 1.9, country_of_origin: "United Kingdom")

Hop.find_by(name: "Columbus").update_attributes(description: "Columbus is a descendant of Nugget. It is a high alpha variety and is primarily used for bittering purposes. Columbus is often referred to as CTZ, a trio of similar hops including Tomahawk and Zeus. Specific aroma descriptors include black pepper, licorice, curry and subtle citrus.", alpha_acid: 14.5, beta_acid: 4.5, country_of_origin: "United States")

Hop.find_by(name: "Comet").update_attributes(description: "Selected in 1961 and released in 1974 by the USDA, Comet was originally utilized for its high alpha acid content and adapability to growing conditions in the Yakima Valley. Commercial production ceased in the early 1980s in favor of newer super-alpha hops, however, Comet has made a recent comeback, finding favor with some brewers in dual purpose applications for its subtle and unique, 'wild American' aroma. Has a grassy, grapefruit and citrus aroma profile.", alpha_acid: 8.0, beta_acid: 4.0, country_of_origin: "United States")

Hop.find_by(name: "Delta").update_attributes(description: "Delta is a Fuggle-type hop, similar to a Willamette, but with a kick. It features a mild and pleasantly spicy aroma of with notes of melon and citrus. Delta was released in 2009 and is considered ideal for ale finishing.", alpha_acid: 5.5, beta_acid: 5.5, country_of_origin: "United States")

Hop.find_by(name: "El Dorado").update_attributes(description: "El Dorado was developed in 2008 by CLS Farms in Washington State and was released in 2010. It has a bold, fruity aroma that includes notes of citrus, apricots, and even Jolly Rancher candy. El Dorado also has a strong alpha content, making it a good dual-purpose hop for bittering.", alpha_acid: 14.0, beta_acid: 7.0, country_of_origin: "United States")

Hop.find_by(name: "Ella").update_attributes(description: "Ella is a sister-hop to Galaxy, with a much more subtle character. Ella can display floral and subtle spice notes, such as star anise, in small doses, which is best appreciated in lagers or pilsners. In larger additions or when dry hopping, Ella can exhibit tropical flavours which can be used to offset robust malt and yeast characters in many styles.", alpha_acid: 13.0, beta_acid: 5.0, country_of_origin: "Australia")

Hop.find_by(name: "Enigma").update_attributes(description: "A very young hop, with its first generous crop in 2015, Enigma descends from the Swiss Tettnang variety, but exhibits a profile very much unlike its heritage. According to Hops Product Australia, where Enigma was cultivated, it is hard to pinpoint a description of Enigma, truly making it an 'enigma' of sorts. Tasting sessions have brought up qualities of ‘Pinot Gris’, ‘raspberries’, and ‘redcurrant’, as wel as rock melon and light tropical fruit. With a high alpha content, Enigma can be seen as a dual-purpose hop.", alpha_acid: 13.0, beta_acid: 5.0, country_of_origin: "Australia")

Hop.find_by(name: "Equinox").update_attributes(country_of_origin: "United States")

Hop.find_by(name: "Eureka").update_attributes(description: "I very new hop that some have described as Simcoe on steroids. It exhibits high aromas of citrus, tropical fruit, pine and resin. More specfic flavors and aromas include black currant, dark fruit, strong herbal notes, pine tree, mint, pungent, light grapefruit rind, citrus and tangerine.", alpha_acid: 17.5, beta_acid: 5.0, country_of_origin: "United States")

Hop.find_by(name: "Falconer's Flight").update_attributes(description: "Developed by Hopunion LLC in 2010, Falconer's Flight hop pellets are an exclusive proprietary hop blend created to honor and support the legacy of Northwest brewing legend, Glen Hay Falconer. Proceeds from each Falconer's Flight purchase is contributed to the Glen Hay Falconer Foundation. Typically used as an aroma hop, specific descriptors include distinct tropical, floral, lemon and grapefruit characteristics.", alpha_acid: 9.5, beta_acid: 4.0, country_of_origin: "United States")

Hop.find_by(name: "French Strisserspalt").update_attributes(name: "French Strisselspalt", description: "Strisselpalt is from the Alsace area of France, near Strasbourg. It is globally accepted as a good aroma hop with similar characteristics to Hersbrucker. Specific aroma descriptors include spicy, citrusy, floral, fruity and herbal.", alpha_acid: 2.0, beta_acid: 4.0, country_of_origin: "France")

Hop.find_by(name: "French Triskel").update_attributes(description: "Developed in 2006, Triskel contains many of the same characteristics as Strisselspalt but displays a more pronounced flavor profile. Mainly used as an aroma hop, specific descriptors include strong floral, herbal, citrus and spicy.", alpha_acid: 8.0, beta_acid: 4.0, country_of_origin: "France")

Hop.find_by(name: "Galaxy").update_attributes(description: "With origins in the mid-1990s, Galaxy grew out of an experiment to breed high alpha content Australia hops with European cultivars, hoping to create a child that exhibited high alpha content while retaining some European characteristics. Typicaly used as a late-addition hop for aroma, Galaxy's high alpha content also makes it a good dual-purpose hop for bittering. Specific aroma descriptors include distinct passionfruit, peach and clean citrus aromas.", alpha_acid: 12.0, beta_acid: 5.0, country_of_origin: "Australia")

Hop.find_by(name: "German Magnum").update_attributes(description: "Bred at the Hop Research Center in Hüll in 1980 and released in 1993, Magnum is a daughter of Galena. It is a high alpha variety with some spice and fruit characteristics. Used as a bittering hop. Magnum also has aromas reminiscient of apple and pepper.", alpha_acid: 12.0, beta_acid: 5.0, country_of_origin: "Germany")

Hop.find_by(name: "German Mandarina Bavaria").update_attributes(description: "Bred at the Hop Research Institute in Hüll, Mandarina Bavaria is a daughter of Cascade and displays pleasant fruitiness in finished beers. Specific aroma descriptors include fruity and citrus, specifically distinct tangerine and citrus flavors.")

Hop.find_by(name: "German Opal").update_attributes(description: "Opal is a dual-purpose hop that is used in traditional German beer styles such as Pilsner, Hefeweizen, and Helles. It was developed at the Hüll Hops Research Institute in Germany and was made commercially available in 2004. Opal hops offer sweet, spicy and slightly peppery flavors, as well as a light orange blossom aroma.", alpha_acid: 13.0, beta_acid: 4.0, country_of_origin: "Germany")

Hop.find_by(name: "German Perle").update_attributes(description: "Bred at the Hüll Hop Research Institute from the English Northern Brewer variety. German Perle hops have a moderately intense, hoppy, slightly fruity and spicy profile, for mildly bittering pale ale, porter and lager. It is compared to Hallertauer Mittelfrüher. Specific aroma descriptors include herbal and spicy with delicate floral, fruit and mint tones.", alpha_acid: 4.0, beta_acid: 2.5, country_of_origin: "Germany")

Hop.find_by(name: "German Select").update_attributes(description: "Bred at the Hop Research Center in Hüll and released in 1993, Select is often referred to as 'Spalter Select' or as 'Hallertauer Select'.", alpha_acid: 4.0, beta_acid: 2.5, country_of_origin: "Germany")

Hop.find_by(name: "Golding (American)").update_attributes(description: "U.S. Golding has very similar qualities as its English hops siblings. It has low alpha acid rating, making it a hops suitable for aroma additions.  Even though it is grown in the U.S. this variety still etches a classic English style into the brew. Its bitterness is faint, while its aroma is pleasant and fragrant, usually floral.")

Hop.find_by(name: "Hallertau Hallertauer Mittelfrüher").update_attributes(name: "Hallertauer Mittelfrüher", description: "Hallertauer Mittelfrüher or Hallertauer Mittelfrüh is the landrace cultivar of the Hallertau, the premier hop growing region of Germany. When grown in the Hallertau, these hops are properly called Hallertau Hallertauer Mittelfrüher, but this is usually shortened to Hallertau Hallertauer. However, homebrewers should be aware that 'Hallertau Hallertauer' is also sometimes used to describe other aroma hops grown in the Hallertau, especially Hallertauer Gold. These hops are one of four hops almost always considered to be noble hops, and are much prized, especially by continental European brewers, for their flavor and aroma characteristics. However, because of their extreme susceptibility to verticillium wilt, true Hallertauer Mittelfrüher is disappearing from the Hallertau. This has led to efforts to breed wilt-resistant hops with similar characteristics, to grow the Hallertauer Mittelfrüher in areas outside of the Hallertau, especially in Tettnang, Hersbruck, and Spalt, and to grow other aroma varieties in the Hallertau, with the result that the name 'Hallertau' or 'Hallertauer', once synonymous with this variety, has been applied to so many hop varieties that it sometimes becomes confusing. The true Hallertau Hallertauer Mittelfrüher has the mild, pleasantly spicy aroma and flavor described simply as 'noble' and characteristic of the great German lagers.")

Hop.find_by(name: "Hallertau Hallertauer Tradition").update_attributes(name: "Hallertauer Tradition", description: "Hallertauer Tradition is a German aroma variety, derived from Hallertauer Gold, which was bred as a replacement for Hallertau Hallertauer Mittelfrüher. It combines a flavor said to be similar to Hallertauer Mittelfrüher with significantly improved disease and pest resistance and higher yield. As with Hallertau Hallertauer Mittelfrüher, the 'Hallertauer' in Hallertauer Tradition is part of the name of the cultivar, and hops of this cultivar grown outside the may also be referred to as Hallertauer Tradition, although it is sometimes simply called Tradition. However, because this variety is currently grown primarily in the Hallertau, the full name is not generally used, and the hop is generally sold simply as Hallertauer Tradition even if it was grown in the Hallertau.")

Hop.find_by(name: "Hallertauer (American)").update_attributes(description: "Small quantities of the true Hallertauer Mittelfrüher cultivar are grown in the United States. However, just as with other Hallertauer hop varieties, it can be difficult to know what exactly you are getting; Hallertauer Gold, Mount Hood, and Liberty, among others, are sometimes sold as 'U.S. Hallertauer'. Even the true Hallertauer Mittelfrüher is not considered to have a true noble hop quality when grown in the United States.")

Hop.find_by(name: "Hallertauer Herkules").update_attributes(description: "Bred at the Hop Research Center in Hüll, Germany, Herkules imparts robust, hoppy flavors. Specific aroma descriptors include robust hoppy with some citrus and melon.", alpha_acid: 12.0, beta_acid: 4.0, country_of_origin: "Germany")

Hop.find_by(name: "Hallertauer Hersbrucker").update_attributes(description: "Originating from the Hersbruck region of Southern Germany, Hersbrucker has expanded and is now widely grown throughout the Hallertau and Spalt regions. It displays a delicate aroma profile that is often compared to other noble varieties. Typically used as an aroma hop, its descriptors include hay, tobacco and orange.", alpha_acid: 1.5, beta_acid: 2.5, country_of_origin: "Germany")

Hop.find_by(name: "Hallertauer Magnum").update_attributes(description: "Derived from German hops including Hallertauer Mittelfrüher and Galena, Hallertauer Magnum, sometimes just called Magnum, is a bittering hop cultivar with a clean German flavor and aroma profile, excellent for bittering any kind of German beer. It is one of the most popular bittering hops in Germany, and is also grown in the United States. Because 'Hallertauer' is part of the cultivar name and not necessarily an indication of where the hop was grown, you should not assume that all Hallertauer Magnum hops were grown in the Hallertau. Magnum hops sold in the United States are often labeled as 'Yakima Magnum'; it is unclear whether this represents a separate cultivar or simply Yakima Valley-grown Hallertauer Magnum.")

Hop.find_by(name: "Helga").update_attributes(description: "Bred in Australia in 1986 and formerly known as Southern Hallertau, Helga is a descendant of Hallertau Mittelfrüh. A dual-purpose hop, Helga’s delicate floral and subtle herbal aroma is an excellent companion to stronger malt driven ales and lagers.", alpha_acid: 5.5, beta_acid: 5.0, country_of_origin: "Australia")

Hop.find_by(name: "Huller Bitterer").update_attributes(description: "This variety was the prodigy of the Hull Hop Research Institute in Germany, and was prided for the first wilt resistant variety to come from the program. Its difficult to find even traces of this hops with exceptions of historical context. Huller Bitterer was a dual use hops and desipte being on the lower side of bitterness, it is still known for its clean bittering qualities. Hüller Bitterer is also known for its aromatic qualities.", alpha_acid: 4.5, beta_acid: 5.0, country_of_origin: "Germany")

Hop.find_by(name: "Idaho 7").update_attributes(description: "A very new variety, sometimes referred to as '007: The Golden Hop.' Sierra Nevada uses this hop in one of their single hop series beers, descriving Idaho 7 as having a 'Complex fruity aromas of orange and apricot mesh with hints of black tea-like character and a pleasant fresh herbal bouquet.'", alpha_acid: 14.0, beta_acid: 4.0, country_of_origin: "United States")

Hop.find_by(name: "Jarrylo").update_attributes(description: "Jarrylo is named after Jarilo, the Slavic god of fertility and springtime. Jarrylo’s banana, pear, spice aroma translates perfectly to Pale Ales, Saisons and Belgians.", alpha_acid: 15.0, beta_acid: 6.0, country_of_origin: "United States")

Hop.find_by(name: "Junga").update_attributes(description: "Junga has a very high bitter value and a good bitter quality like German Magnum but with nice aroma.", alpha_acid: 11.0, beta_acid: 5.0, country_of_origin: "Poland")

Hop.find_by(name: "Lemon Drop").update_attributes(description: "Lemon Drop boasts fantastic lemony-citrus aroma for late kettle additions or dry hopping. Originally released by HopSteiner in 2012 as Experimental #01210, this Super Cascadian hop has a unique combination of fruity and herbal notes, ideal for IPAs, Pale Ales and Saisons.", alpha_acid: 5.0, beta_acid: 4.0, country_of_origin: "United States")

Hop.find_by(name: "Magnum").update_attributes(description: "Bred at the Hop Research Center in Hüll in 1980 and released in 1993, Magnum is a German variety (also grown in the US) and daughter of Galena. It is a high alpha cultivar and is often used as the base bittering variety. Magnum does not display any distinct aroma characteristics, however, subtle spice and fruit characteristics have been noted by some brewers. It is mainly used as a bittering hop.", alpha_acid: 12.0, beta_acid: 5.5, country_of_origin: "United States")

Hop.find_by(name: "Marynka").update_attributes(description: "Marynka is one of the few Polish Hops on the market. It shares the same pride as Lublin Hops and shares much of the same growing area, largely outside of the city of Lublin, Poland. Primarily used for its bittering qualities, it also has a heavy, up front aroma with essence of earthy and herbal tones.", alpha_acid: 9.0, beta_acid: 10.0, country_of_origin: "Poland")

Hop.find_by(name: "Meridian").update_attributes(description: "A brand new hop with crisp flavors of lemon, mixed berry, and tropical fruit. It has shown promise in single hopped pale ales and IPAs, both as a late kettle addition and via dry hopping.  It plays well with Belgian ales as well as European and American lager styles, giving the crisp, clean lager base a refreshing hop finish.", alpha_acid: 6.0, beta_acid: 6.0, country_of_origin: "United States")

Hop.find_by(name: "Millenium").update_attributes(name: "Millennium", description: "Bred by the John I. Haas breeding program and released in 2000, Millennium is a super-alpha variety with mild, herbal aromas. It is tolerant to downy mildew and powdery mildew, and has good pickability of medium size cones. Specific aroma descriptors include resin, floral, toffee and pear. Good for use in stouts.", alpha_acid: 15.5, beta_acid: 5.0, country_of_origin: "United States")

Hop.find_by(name: "MIstral").update_attributes(name: "Mistral", alpha_acid: 5.4)

Hop.find_by(name: "Mosaic").update_attributes(description: "Developed by Hop Breeding Company and released in 2012, Mosaic contains high alpha content and features a unique and complex aroma profile that translates favorably into a variety of beer styles. It is a daughter of Simcoe and a Nugget derived male. Specific aroma descriptors include blueberry, tangerine, papaya, rose, blossoms, and bubble gum.", alpha_acid: 10.5, beta_acid: 3.0, country_of_origin: "United States")

Hop.find_by(name: "Motueka").update_attributes(description: "This hop was bred by crossing a New Zealand breeding selection with a Saazer as part of the Hops with a Difference programme. Excellent when employed in multiple additions from a single hop bill and sits well on the palate to balance specialty malt sweetness. It is an excellent variety for a wide range of styles from Saison through to Pilsners. Primarily used as an aroma hop. Specific aroma descriptors include distinctive fresh crushed citrus, 'Mojito' lime character, lively lemon and lime tones with background hints of tropical fruit.", alpha_acid: 6.5, beta_acid: 5.0, country_of_origin: "New Zealand")

Hop.find_by(name: "Mt. Rainier").update_attributes(description: "Bred by Oregon State University, Mt. Rainier is a dual purpose variety with noble aroma characteristics. It is similar to the classic German variety, Hallertau Mittelfrüh, but features more bittering strength. Specific aroma descriptors include noble, licorice and floral bouquet.", alpha_acid: 5.0, beta_acid: 8.0, country_of_origin: "United States")

Hop.find_by(name: "Nelson Sauvin").update_attributes(description: "Developed by the New Zealand Institute for Plant and Food Research hop breeding program and released in 2000, Nelson Sauvin is a triploid variety bred from the New Zealand Smoothcone and a selected New Zealand male. It is known for being one of the most unique hop varieties, displaying strong fruit and white wine aroma characteristics. Specific aroma descriptors include distinctive 'New World' white wine characters; fruitiness with fresh crushed gooseberry and grape infused flavors.", alpha_acid: 12.0, beta_acid: 6.0, country_of_origin: "New Zealand")

Hop.find_by(name: "Newport").update_attributes(description: "Bred and released in 1992, Newport is a descendant of the classic bittering variety, Magnum. It offers high alpha acid, co-humulone and myrcene content, offering more distinct aroma characteristics than its parent. Newport is resistant to downy mildew and powdery mildew and has good pickability of medium to large size, loose cones. Used as a bittering hop, it can produce a range of aromas including earth, citrus, wine and balsamic.", alpha_acid: 10.0, beta_acid: 5.5, country_of_origin: "United States")

Hop.find_by(name: "Omega").update_attributes(description: "Bred at Wye College, Omega failed to produce a significant yield to gain a major foothold in the commerical market. It has a pleasant European aroma and decent alpha conent, as well as good storage stability and wilt resistance.", alpha_acid: 9.0, beta_acid: 3.0, country_of_origin: "United Kingdom")

Hop.find_by(name: "Orion").update_attributes(description: "Orion Hops is a descendant of Northern Brewer, however it is not that common and acreage is limited, dominantly in Germany. Orion has a moderate alpha acid content and is a dual use hops. Orion is most famous for its appearance in brews from Franskaner Brauerei, but is harder to find on the mass scale.", alpha_acid: 8.0, beta_acid: 5.0, country_of_origin: "Germany")

Hop.find_by(name: "Pacific Jade").update_attributes(description: "Developed by the New Zealand Institute for Plant and Food Research hop breeding program and released in 2004, Pacific Jade is a cross of New Zealand First Choice (a relative of the Late Cluster) and a Saaz male. It is suited for use as a bittering hop but also delivers bold citrus and spice aroma characteristics. Specific aroma descriptors include fresh citrus and complex spice characters; some bold herbal aromas and hints of black pepper.", alpha_acid: 12.0, beta_acid: 7.0, country_of_origin: "New Zealand")

Hop.find_by(name: "Pacifica").update_attributes(description: "Pacifica brings something of a blend of new and old-world taste descriptors. It is ideally suited to traditional German lager styles but is finding wider application to a new generation through the international craft market's insatiable thirst for Pale Ale. Specific aroma descriptors include a signature citrus 'orange zest' marmalade; classic Hallertau characteristics with some floral notes.", alpha_acid: 5.0, beta_acid: 6.0, country_of_origin: "New Zealand")

Hop.find_by(name: "Palisades").update_attributes(name: "Palisade", description: "Palisade borders the line on being a dual use hops, and is associated with beer styles such as India Pale Ales, but more for the complex but subdued flavor profile and aroma than the bitterness. Mainly used as an aroma hop. Specific aroma descriptors include apricot, grass and clean floral characteristics.", alpha_acid: 8.0, beta_acid: 5.5, country_of_origin: "United States")

Hop.find_by(name: "Premiant").update_attributes(description: "Bred from Saaz and released in 1996, Premiant has a relatively high alpha content for Czech varieties. As a result, it has found some application as a dual purpose variety. Specific aroma descriptors include pleasant and mild.", alpha_acid: 8.0, beta_acid: 3.5, country_of_origin: "Czech Republic")

Hop.find_by(name: "Rakau").update_attributes(description: "Re-released in 2007 from the New Zealand hop breeding program, Rakau is often described as “the whole orchard.” It is often used in New World styles where brash fruity character and big but well constructed bitterness is desired. Rakau performs best when used in combination of late additions and dry hopping. Can be used as a dual-purpose hop, Rakau has aromas that include stone fruit and fig characteristics; fresh orchard fruits, specifically apricot with some resinous pine needle characteristics are noted.", alpha_acid: 10.0, beta_acid: 5.0, country_of_origin: "New Zealand")

Hop.find_by(name: "Riwaka NZ").update_attributes(name: "Riwaka", description: "A triploid aroma type bred during the development of New Zealand Hops “Hops with a Difference” programme, the same that brought Motueka, Riwaka is a quintessential New Zealand hop variety. Due to its low alpha content, Riwaka is more useful as an aroma hop. Specific aroma descriptors include powerfully fueled tropical passion fruit with grapefruit and citrus characters.", alpha_acid: 4.5, beta_acid: 4.0, country_of_origin: "New Zealand")

Hop.find_by(name: "Saphir (German Organic)").update_attributes(name: "Saphir", description: "Saphir, sometimes called Saphire, Sapphire, or Hallertau Saphir, was bred from the Hops Research Institute in Hull Germany. Saphir is a good aroma variety with a distinct hoppy tang and an average bitter value. It has one of the lowest alpha contents in the world for a hop. Saphir is compared to Hallertauer Mittlefrueh, which is closely associated with German style beers and has been a trade mark of German Style Lagers. Specific aroma descriptors include spicy, fruity and floral with hints of tangerine tones.", alpha_acid: 2.0, beta_acid: 6.0, country_of_origin: "Germany")

Hop.find_by(name: "Sladek (Saaz)").update_attributes(name: "Sladek", description: "Sladek, meaning ‘brewer’, is a high yielding aroma variety and cross between Saaz and Northern Brewer. Sladek features a classic hoppy aroma atop a fruity flavor profile with essences of peach, passionfruit and grapefruit.", alpha_acid: 4.5, beta_acid: 4.0, country_of_origin: "Czech Republic")

Hop.find_by(name: "Sonnet").update_attributes(description: "Sonnet is a new hop variety bred from a Saaz variant that exhibited Goldings-like characteristics. It's used for aroma due to its low alpha acid content, and offers lots of floral notes. Commonly used in English ales.", alpha_acid: 4.0, beta_acid: 4.0, country_of_origin: "United States")

Hop.find_by(name: "Sorachi Ace").update_attributes(description: "Developed in Japan in 1984 for Sapporo Breweries, Ltd., Sorachi Ace is a cross between Brewer's Gold, Saaz and Beikei No. 2 male. Primarily used as a dual-purpose hop. Specific aroma descriptors include lemon, lime and dill.", alpha_acid: 11.5, beta_acid: 6.0, country_of_origin: "Japan")

Hop.find_by(name: "Southern Promise").update_attributes(description: "Southern Promise is a dual purpose hops with a relatively high alpha acid count. It comes with a very low co-humulone content which gives the beer a cleaner, smoother bitterness. Southern Promise also has good aromatic qualities, and is used to add a hoppy bouquet to many different beer styles of including Pilsners, Lagers, and Ales. Cultivated in South Africa.", alpha_acid: 9.5, beta_acid: 3.6, country_of_origin: "South Africa")

Hop.find_by(name: "Sovereign").update_attributes(description: "Bred for aroma in 1995 at Wye College. Created through an open pollination, Sovereign’s lineage includes Pioneer and Whitbread Goldings. A dual-purpose hop with aroma descriptors that include pleasant but intense fruity flavors with mild floral, grassy, herbal and mint characteristics.", alpha_acid: 4.5, beta_acid: 2.1, country_of_origin: "United Kingdom")

Hop.find_by(name: "Spalt Select").update_attributes(description: "Spalt Select, sometimes called Spalter Select, was released in the late 1980s by the German hop breeding program at Hüll. The goal of Spalt Select was to reproduce the classic noble hop character of the Spalt Spalter landrace in a more easily grown hop. Spalt Select was reportedly chosen by Anheuser-Busch to replace Spalt Spalter and Tettnang Tettnanger hops in some of their recipes. Some Spalter Select hops available to American homebrewers may be labeled simply as 'Spalt' or 'Spalter', but in fact Spalt Select is not the same cultivar as Spalt Spalter or even a closely related cultivar; it is a triploid derived primarily from Hallertauer Mittelfrüh. Since 'Spalt' or 'Spalter' is part of the hop's name, hops grown anywhere may be sold as 'Spalter Select'. In fact, in addition to Spalt, much commercial production of Spalt Select takes place in the Hallertau. Some growers are currently growing Spalt Select as an organic hop.")

Hop.find_by(name: "Spalt Select").update_attributes(description: "Usually considered one of the classic noble hops, Spalt spalter is the landrace hop of Germany's Spalt growing region, closely related to Saaz Saazer and Tettnang Tettnanger. Today some Spalter hops are also grown in other parts of Germany and marketed simply as Spalt. Spalt Spalter has a mild, spicy aroma that is often compared to Czech Saaz or Tettnang Tettnanger. Can be used in any beer calling for a noble hop. Because of the poor growing characteristics of this hop, Spalt Select, a hop claimed to have similar flavor and aroma but better growing characteristics, was released by the German hop breeding program at Hüll in the 1980s, and is now grown extensively both in Spalt and in the the Hallertau. Some Spalt Select hops available to American homebrewers may be labeled simply as 'Spalt' or 'Spalter'.")

Hop.find_by(name: "Aurora").update_attributes(country_of_origin: "Slovenia")

Hop.find_by(name: "Super Galena").update_attributes(description: "Super Galena was developed in 1998 in Yakima, Washington. It was released, however, in 2006, and gave the world of brewing a stronger, higher yielding, and mildew resistant form of Galena Hops. Super Galena is very comparable to Galena Hops in character. It is a bittering hops known for its clean and crisp bitterness.", alpha_acid: 14.0, beta_acid: 8.0, country_of_origin: "United States")

Hop.find_by(name: "Sybilla").update_attributes(description: "Well-balanced, versatile, dual purpose variety. Used for bittering, flavoring, aroma and dry hopping. Bred in family of Lublin mother and wild Yugoslavian father. Sybilla was registed in 1996. Sybilla has floral, lemon and pine characteristics.", alpha_acid: 7.0, beta_acid: 9.0, country_of_origin: "Poland")

Hop.find_by(name: "Talisman").update_attributes(description: "Released in 1965, Talisman is an American Cluster variety descended from Late Cluster. Peaking at 4.6% of total US hop production in 1973, the popularity of Talisman has steadily declined ever since. Currently, it is no longer grown commercially. It was mainly used as a dual-purpose hop.", alpha_acid: 5.7, beta_acid: 3.0, country_of_origin: "United States")

Hop.find_by(name: "Topaz").update_attributes(description: "Topaz's ancestry heralds from an existing Australian high alpha acid variety crossed with pollen from a Wye college male – which provided an interesting mix of English, continental European and north American heritage. It is multi-purpose variety that features elements of clove-like spice and a light, lychee-esque fruitiness. Created in 1985, Topaz was always intended to be a high alpha hop.", alpha_acid: 14.0, beta_acid: 6.5, country_of_origin: "Australia")

Hop.find_by(name: "Vic Secret").update_attributes(description: "Vic Secret has been developed from a seedling created in Victoria in 2000. It actually shares the same mother and father as Topaz and experienced its first commercial harvest in 2013. Vic Secret features elements of tropical fruit, herbs and pine with clean notes of pineapple and passionfruit. It is best utilized via whirlpooling and dry hopping in the brew process.", alpha_acid: 14.0, beta_acid: 6.0, country_of_origin: "Australia")

Hop.find_by(name: "Waimea").update_attributes(description: "Released from The New Zealand Institute for Plant & Food Research Limited’s Motueka Research Centre, Waimea is well-suited to dual purpose applications from early kettle additions right through to dry hopping. It exudes quality bitterness and aroma abound with fruity citrus and pine characters from this hop's big weight of oil. A big hop for big beers, it an be used across a wide array of styles in a variety of brewhouse and dry hopping applications.")

Hop.find_by(name: "Wakatu").update_attributes(description: "Developed by the New Zealand Institute for Plant and Food Research hop breeding program and released in 1988, as Hallertau Aroma, Wakatu was renamed in 2011. Wakatu is a well rounded, dual-purpose variety with strong, fresh citrus characteristics and some bittering capabilities. Aroma descriptors include restrained floral notes and freshly zested lime.", alpha_acid: 7.0, beta_acid: 8.5, country_of_origin: "New Zealand")

Hop.find_by(name: "Target").update_attributes(description: "Target Hops was bred at the Hop Research Institute at Wye College in England and was released in 1992 and at one point Target accounted for 40% of all U.K. hop production. Target is widely used in the UK for both its bittering and aromatic qualities. It imparts a clean bitterness and is commonly used for kettle additions in the brewing process for its smooth bite, and also for early aroma contributions. Specific aroma descriptors include fresh green sage, spicy and peppery, and hints of citrus marmalade.")

Hop.find_by(name: "Yeoman").update_attributes(description: "Bred at Wye College in the 1970’s, Yeoman is no longer available on the commercial brewing market, however, it has left on mark on the brewing community through its lineage, giving rise to Australian Super Pride and Pioneer hops. Its alpha content is very high for an English hop and was subsequently used as a bittering hop.", alpha_acid: 13.0, beta_acid: 4.0, country_of_origin: "United Kingdom")

Hop.find_by(name: "Zenith").update_attributes(description: "A high alpha aroma variety bred at Wye College, England in the 1970’s. It is a hoppy all-purpose hop (not as bitter as Yeoman) that works well with many other finishing type hops. Has a notably strong aroma for a high alpha type.", alpha_acid: 10.0, beta_acid: 3.0, country_of_origin: "United Kingdom")

Hop.find_by(name: "Zythos").update_attributes(description: "Zythos is a new 'IPA style' hop blend created to optimize and exceed the aroma characteristics of the traditional IPA hops.Specific aroma descriptors include distinct tropical (pineapple) and citrus tones with slight pine characteristics.", alpha_acid: 10.0, beta_acid: 5.0, country_of_origin: "United States")


Location.create!(
  name: "Yakima Valley, Washington",
  latitude: 46.4165153,
  longitude: -120.6345109,
  description: "The Yakima Valley's rich volcanic soil, Cascade mountain water, and long sun-filled days all contribute to prime growing conditions for hops. The Yakima Valley contains approximately 75% of the total United States hop acreage, with an average farm size of 450 acres accounting for over 77% of the total United States hop crop. In the State of Washington hops are only grown commercially in the Yakima Valley. However, within this valley there are three distinct growing areas, the Moxee Valley, the Yakama Indian Reservation, and the Lower Yakima Valley. Each of these areas, while no more than 50 miles apart, possess unique growing conditions. The Lower Yakima Valley, with its slightly warmer climate, can produce outstanding yields during first year (baby) hop plantings. Many other crops grow in the lower Yakima Valley enabling growers to easily diversify. The Yakama Indian Reservation, located in the center of the Yakima Valley, is most noted for its vast open spaces and its ability to produce superior alpha levels."
)

Location.create!(
  name: "Willamette Valley, Oregon",
  latitude: 44.9426,
  longitude: -122.9338,
  description: "The second largest hop-growing area in the United States, the valley lies between the Coast Range and the Cascade Mountains, some 40 miles south of Portland, Oregon. Situated at a latitude of approximately 45° north, this region’s climate is similar to that of the Hallertau hop-growing region in southern Germany, although the Willamette Valley has warmer winters. The region produces almost 20% of all US hops, compared with about 75% from the Yakima Valley in the state of Washington and almost 10% from Idaho. Among the roughly 20 hop varieties that grow in the region, Cascade, Glacier, Golding, Millennium, Mount Hood, Nugget, Sterling, Super Galena, and Willamette are perhaps the best known. The most prevalent varieties are Nugget and Willamette, which are planted on about 70% of the total acreage."
)

Location.create!(
  name: "Boundary County, Idaho",
  latitude: 48.9582634,
  longitude: -117.0013492,
  description: "This area of northern Idaho began as a backup site for growing Hallertauer Mittlefrueh, which was undergoing serious problems in the 60s and 70s in Germany. The first Hallertauer Mittelfrueh rhizomes (root stock), imported from Germany, were planted there in 1971 and the first harvest was the following year. Coors bought all the hops the farm could produce until 1978, when Anheuser-Busch contracted for 80 acres of production. By 1987, Anheuser-Busch had taken over the farm and began to expand it. In the 2000, a transition was complete that saw an equal production of Saaz and Hallertauer hops. In recent years, however, after the purchase of Anheuser-Busch by InBev, hop acreage at Bonners Ferry in northern Idaho was drastically reduced, and its future remains uncertain."
)

Location.create!(
  name: "Canyon County, Idaho",
  latitude: 43.676389,
  longitude: -116.91,
  description: "Canyon County includes the communities of Parma, Wilder, Greenleaf, and Notus. In contrast to the more moderate climate in northern Idaho, the southern Idaho climate is hot and dry, similar to the Yakima Valley in Washington State. Until the late 1970s and early 1980s, Cluster, Talisman, and Cascade were the dominant varieties planted in southern Idaho. Subsequently, these were largely replaced by Galena. When higher-yielding, high-alpha varieties began to be planted in the Yakima Valley in the 1990s, these were also found to do well in Southern Idaho. Although some aroma hops such as Willamette and Cascade are being cultivated in the southern Idaho region as well, bittering varieties, as well as the dual-purpose Chinook, are much better suited to the hot climate. Since summers tend to be hotter in southern Idaho than Yakima, identical varieties often yield lower alpha acid values and a bit less aroma in southern Idaho than they do in Washington State."
)

Location.create!(
  name: "Hallertau region, Germany",
  latitude: 48.634722,
  longitude: 11.774722,
  description: "Located in Bavaria, Germany, the Hallertau region is listed as the largest continuous hop-planting area in the world. Hops have been grown there at least since 768 ad, the date of the oldest preserved documentary evidence of hop gardens in the vicinity. But hop cultivation remained fairly modest in the Hallertau until the 16th century, when the use of hops as an exclusive beer flavoring became mandated for all of Bavaria by ducal decree. The number of hop farms in Germany has been in decline for several decades. Whereas there were more than 13,000 in the early 1960s, there are now not even 1,500 and fewer than 1,200 of these are in the Hallertau. The total hop acreage, however, has remained fairly constant because the average farm size has grown. The Hallertau has long been an aroma hop area, but now high-alpha bittering hops are increasingly grown there as well. Today, almost as much acreage in the Hallertau is devoted to bitter hops cultivation—mostly Hallertauer Magnum, Herkules, Taurus, Northern Brewer, and Nugget—as to aroma hops cultivation—mostly Perle, Hallertauer Tradition, Hallertauer Mittelfrueh, and Hersbrucker Spät."
)

Location.create!(
  name: "Spalt, Germany",
  latitude: 49.173889,
  longitude: 10.9275,
  description: "A German hop-growing area centered around the small Franconian town of Spalt, roughly 18 miles south of Nuremburg, in Bavaria. It is the home of the classic aroma hop Spalter. In 1538, Spalter hops were so prized that the district became the first to be awarded by the feudal powers of the time the privilege to a use a so-called hop seal. This seal was placed on packaged hops to authenticate that they were in fact genuine Spalter hops, and this allowed them to command a higher price. In later centuries the cultivation of hops in the greater Nuremburg area declined drastically, but the Spalt district always remained viable. Although the classic Spalter variety is still a major hop grown in the region, Spalt Select has surpassed it in total acreage, and there is just about as much Hallertauer Mittelfrueh in the ground as Spalter."
)

Location.create!(
  name: "Tettnang, Germany",
  latitude: 47.670833,
  longitude: 9.5875,
  description: "A small German hop-growing area on the north shore of Lake Constance, near the Swiss border, centered around the town of Tettnang in Baden-Wurttemberg. Hop production there became significant only in the mid-19th century. The classic aroma variety of the region is its namesake Tettnanger. The other main cultivar grown in Tettnang is Hallertauer Mittelfrueh. Smaller amounts of Perle and Hallertauer Tradition are grown there as well."
)

Location.create!(
  name: "Kent, United Kingdom",
  latitude: 51.266667,
  longitude: 1.083333,
  description: "The South-East counties of Kent, Suffolk, Surrey and Sussex are where hops were first grown in the UK. There are three areas where the soil, climate and aspect are good for hops: East Kent, with its brick-earths, mainly around Faversham and Canterbury, always known for high quality hops; Mid-Kent, mainly the Medway valley, including the Maidstone district, on the Lower Greensand; and Weald and High Weald, particularly the East Peckham and Yalding, and the large parishes to the south and east of Yalding, with their Weald Clay and Tunbridge Wells Sand. Hop production has been on the decline in the UK, losing out to the cultivars in the US, however, new varities such as Jester and Olicana, with their tropical aromas, may help spur on industry growth."
)

Location.create!(
  name: "Herefordshire county, United Kingdom",
  latitude: 52.083333,
  longitude: -2.75,
  description: "The West Midlands region of the UK followed the South-East counties in hop production. This region of hops growth includes Herefordshire county and Worcestershire county, both of which account for about half of the British hop production."
)

Location.create!(
  name: "Nelson, New Zealand",
  latitude: -41.270833,
  longitude: 173.283889,
  description: "Nelson is the hop growing center of New Zealand. Hops are not a native to New Zealand so early settlers from England and Germany circa 1840 had brought hops from their homelands, which they grew to brew beer for the table as part of household duties. The hops grown at that time were varieties called Fuggle and Golding from England and Spalt from Germany, all of which had adapted to the local conditions although they did not perform all that well. Cluster from California was brought down to cultivate, but it also did not fair well after it was found susceptibile to black root rot, a fungal disease. Three resistant strains had been developed by 1960, but the world’s breweries were beginning to demand seedless hops. The Department of Scientific and Industrial Research established a hop research station at Riwaka and began working to develop the world’s first triploid (seedless) hop vines and released the triploid in the 1970s. In recent years, around 20 varities of hops are grown commercially in New Zealand. Nelson’s southern hemisphere position means the industry can supply the northern hemisphere in its off-season, with eighty percent of New Zealand’s hops being exported."
)

Location.create!(
  name: "Tasmania, Australia",
  latitude: -42.831667,
  longitude: 147.1657894,
  description: "A Kent farmer introduced hops to Australia in 1822. His son established a hop farm in Tasmania, which is now owned and operated by Hop Products Australia (HPA), which handles around 90% of the hops grown in Australia, about 1% of the world’s production. HPA also owns a farm in Victoria, north of Melbourne. Generally, hop cultivars that are developed overseas are not viable in Australia, the exceptions being Cascade, Willamette and Cluster, among others. However, HPA has developed such proproietary varieties as Ella, Galaxy, Summer and Topaz, which thrive on southern summer sunshine and minimal rain."
)

Location.create!(
  name: "Zatec, Czech Republic",
  latitude: 50.33,
  longitude: 13.544444,
  description: "This is main hop-growing region of the Czech Republic, centered on the town of Žatec near the western border of the country. This is also the origin of what may be the world’s most prestigious hop, Saaz. There are two other hop-producing regions in the Czech Republic, Trschitz and Auscha, both of which also grow Saaz; however, combined they are less than half the size of Žatec. Hop research activity in the region dates as far back as 1925, and a state-sponsored Hop Research Institute was founded in 1950. After the fall of communism, this became the Hop Research Institute Co Ltd. The institute researches and promotes agricultural practices, breeds new hop varieties, and has become one of the world’s leading hop research centers. "
)


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
                  hop_id: rand(1..130))
end

100.times do
  Favorite.create!(user_id: rand(1..75),
                   hop_id: rand(1..130))
end
