

Location.destroy_all
User.destroy_all
Goodspot.destroy_all

locations = [{
  state: "CA",
  city: "Los Angeles"
  }, {
  state: "MA",
  city: "Boston"
  }
]


users = [{
  username: "robgonnella",
  password: "1a2s3d4f"
  }, {
  username: "burlweathers",
  password: "abc123"
  }, {
  username: "taconator",
  password: "tacotacotaco"
  }, {
  username: "jamesbrown",
  password: "sexmachine"
  }, {
  username: "mrT",
  password: "pitythefool"
  }, {
  username: "georgecarlin",
  password: "bullshit"
  }, {
  username: "georgeforman",
  password: "leanmean"
  }, {
  username: "georgeharrison",
  password: "thebestbeatle"
  }, {
  username: "georgeclinton",
  password: "funkadelic"
  }, {
  username: "curiousgeorge",
  password: "$%&@"
  },
]

goodspots = [{
  name:         "The Museum of Jurrassic Technology",
  description:  "A museum dedicated to all the lost
                supersitions, sciences, and arts
                throughout history",
  address:      "9341 Venice Blvd Culver City CA 90232",
  url:          "http://www.mjt.org/",
  category:     "Museum"
  }, {
  name:         "Electric Lotus",
  description:  "Awesome Indian cuisine in Los Feliz!",
  address:      "1739 N. Vermont Ave Los Angeles CA 90027",
  url:          "http://electriclotuslosfeliz.com/",
  category:     "Restaurant"
  }, {
  name:         "Rainbow Bar & Grill",
  description:  "Crazy dive bar in West Hollywood
                famous hangout for Motely Crue, Motorhead
                and Ron Jeremy!",
  address:      "9015 Sunset Blvd West Hollywood CA 90069",
  url:          "http://www.rainbowbarandgrill.com/",
  category:     "Restaurant"
  }, {
  name:         "Little Beast",
  description:  "Awesome Indian cuisine in Los Feliz!",
  address:      "1739 N. Vermont Ave Los Angeles CA 90027",
  url:          "http://www.littlebeastrestaurant.com/",
  category:     "Restaurant"
  }, {
  name:         "The Smell",
  description:  "Since 1998 The Smell has been a community
                oriented art and music space open to people
                of all ages who are interested in participating
                in and supporting an environment of creativity
                and artistic innovation and freedom.",
  address:      "247 S. Main Street Los Angeles CA 90012",
  url:          "http://www.thesmell.org/",
  category:     "Venue"
  }, {
  name:         "Annenberg Space for Photography",
  description:  "This photography-only privately funded space in
                the middle of Century City takes an innovative
                approach to displaying digital and print works.
                Exhibitions at the Annenberg often incorporate videos,
                lectures and/or music. The free admission and $1 parking
                help attract a younger crowd to the otherwise more
                corporate neighborhood. (It's housed adjacent to the
                intentionally intimidating CAA offices.) From the
                titillating works of Helmut Newton to a gorgeous
                125-year retrospective of National Geographic
                photography, engaging and specific exhibitions are
                the Annenberg Space's signature.",
  url:          "https://annenbergphotospace.org/",
  category:     "Museum"
  }, {
  name:         "Greek Theatre",
  description:  "The Greek Theatre is an internationally renowned
                venue presenting a wide variety of headline
                entertainment. The 5,900 capacity venue has played
                host to some of the biggest names in entertainment,
                from pop to classical, reggae to rock and has even
                been the backdrop for blockbuster movies, including
                a starring role in ‘Get Him to The Greek’.",
  address:      "2700 North Vermont Ave Los Angeles CA 90027",
  url:          "http://www.greektheatrela.com/",
  category:     "Venue"
  }, {
  name:         "Angel City Brewery",
  description:  "BEEEEEEER!",
  category:     "Tours"
  }, {
  name:         "Torung",
  description:  "Cheap good-ass thai food!",
  category:     "Restaurant"
  }, {
  name:         "The Regent Theatre",
  description:  "Beautiful old venue downtown on S. Main St.
                Saw really great show there last night, sound
                was fantastic!",
  category:     "Venue"
  }, {
  name:         "Electric Lotus",
  description:  "La Luz de Jesus Gallery was established in 1986
                as the brainchild of entrepreneur and art collector
                Billy Shire, considered largely responsible for
                fostering a new school of California art and
                prompting JUXTAPOZ Magazine to dub him the
                Peggy Guggenheim of Lowbrow.",
  address:      "4633 Hollywood Boulevard Los Angeles CA 90027",
  url:          "http://laluzdejesus.com/",
  category:     "Art"
  }, {
  name:         "Best Fish Taco in Encenada",
  description:  "Seriously it's the best!",
  url:          "http://www.bestfishtacoinensenada.com",
  category:     "Food"
  }, {
  name:         "TOPANGA BEACH",
  description:  "For adventurous novices, the swells at Topanga Beach
                are a little easier to drop into and perfect for the
                beginner’s longboard. The only catch: conditions are
                so ideal you might have to compete with plenty of
                good surfers for waves.",
  category:     "Surfing"
  }, {
  name:         "Vista Theater",
  description:  "The historic single-screen Vista Theater plays
                movies on actual film reels (no digital here)
                and boasts giant Art Deco light fixtures, kitschy
                Egyptian-themed wall details and a lovely manager,
                Victor Martinez, who dresses up for every opening
                (think: Willy Wonka for Charlie and the
                Chocolate Factory, the Joker for The Dark Knight, etc.).
                The theater is by no means luxury
                (although the leg room is pretty spectacular),
                but it's got character and is within walking distance
                of Silver Lake, Los Feliz and East Hollywood, making it
                an extra appealing option for Eastsiders.",
  category:     "Movie Theater"
  }, {
  name:         "Grifith Observatory",
  description:  "This iconic Art Deco building has sat overlooking LA
                for more than 80 years and is a popular destination for
                locals and tourists, especially at sunset. Marvel at the
                12-inch Zeiss refracting telescope, once again open to
                the public. The ground floor holds the Hall of the Sky
                and Hall of the Eye, a pair of complementary displays
                that focus on humans' relationship to the stars;
                a Foucault pendulum, directly under Hugo Ballin's famed
                mural on the central rotunda; and the handsome, high-tech
                Samuel Oschin Planetarium. It's easy to spend all of your
                time outside enjoying the view, but don't miss the Tesla
                coil and the seismograph machine downstairs.",
  address:      "2800 E Observatory Rd, Los Angeles, CA 90027",
  category:     "Meuseum"
  }, {
  name:         "The Satellite",
  description:  "A legendary tastemaker for the eastside indie rock set,
                the Satellite embraces (and makes stars of) rising bands
                from across the world and down the block. Musicians, writers,
                artists and those who love them meet to mingle and take in
                everything from experimental noise ensembles to alt-rock
                stars to arena headliners playing covert sets",
  url:          "http://www.thesatellitela.com/",
  category:     "Venue"
  }
]
User.create users
Location.create locations
Goodspot.create goodspots
