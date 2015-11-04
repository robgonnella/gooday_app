
Goodspot.destroy_all
User.destroy_all
Location.destroy_all



l1 = Location.create(
  state: "CA",
  city: "Los Angeles"
)
l2 = Location.create(
  state: "MA",
  city: "Boston"
)

u1 = User.create(
  username: "robgonnella",
  email:    "robgonnella@gmail.com",
  password: "123",
  password_confirmation: "123"
)
u2 = User.create(
  username: "burlweathers",
  email:    "burlweathers@gmail.com",
  password: "123",
  password_confirmation: "123"
)
u3 = User.create(
  username: "taconator",
  email:    "taconator@gmail.com",
  password: "123",
  password_confirmation: "123"
)
u4 = User.create(
  username: "jamesbrown",
  email:    "sexmachine@gmail.com",
  password: "123",
  password_confirmation: "123"
)
u5 = User.create(
  username: "mrT",
  email:    "mrT@gmail.com",
  password: "123",
  password_confirmation: "123"
)
u6 = User.create(
  username: "georgecarlin",
  email:    "georgecarlin@gmail.com",
  password: "123",
  password_confirmation: "123"
)
u7 = User.create(
  username: "georgeforeman",
  email:    "georgeforeman@gmail.com",
  password: "123",
  password_confirmation: "123"
)
u8 = User.create(
  username: "georgeharrison",
  email:    "georgeharrison@gmail.com",
  password: "123",
  password_confirmation: "123"
)
u9 = User.create(
  username: "georgeclinton",
  email:    "georgeclinton@gmail.com",
  password: "123",
  password_confirmation: "123"
)
u10 = User.create(
  username: "curiousgeorge",
  email:    "curiousgeorge@gmail.com",
  password: "123",
  password_confirmation: "123"
)

g1 = u1.goodspots.create(
  name:         "The Museum of Jurrassic Technology",
  description:  "A museum dedicated to all the lost
                supersitions, sciences, and arts
                throughout history",
  address:      "9341 Venice Blvd Culver City CA 90232",
  url:          "http://www.mjt.org/",
  category:     "Museum",
  location: l1
)
g2 = u2.goodspots.create(
  name:         "Electric Lotus",
  description:  "Awesome Indian cuisine in Los Feliz!",
  address:      "1739 N. Vermont Ave Los Angeles CA 90027",
  url:          "http://electriclotuslosfeliz.com/",
  category:     "Restaurant",
  location: l1
)

g3 = u3.goodspots.create(
  name:         "Rainbow Bar & Grill",
  description:  "Crazy dive bar in West Hollywood
                famous hangout for Motely Crue, Motorhead
                and Ron Jeremy!",
  address:      "9015 Sunset Blvd West Hollywood CA 90069",
  url:          "http://www.rainbowbarandgrill.com/",
  category:     "Restaurant",
  location:     l1
  )
g4 = u4.goodspots.create(
  name:         "Little Beast",
  description:  "Awesome Indian cuisine in Los Feliz!",
  address:      "1739 N. Vermont Ave Los Angeles CA 90027",
  url:          "http://www.littlebeastrestaurant.com/",
  category:     "Restaurant",
  location:     l1
  )
g5 = u5.goodspots.create(
  name:         "The Smell",
  description:  "Since 1998 The Smell has been a community
                oriented art and music space open to people
                of all ages who are interested in participating
                in and supporting an environment of creativity
                and artistic innovation and freedom.",
  address:      "247 S. Main Street Los Angeles CA 90012",
  url:          "http://www.thesmell.org/",
  category:     "Venue",
  location:     l1
)
g6 = u6.goodspots.create(
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
  category:     "Museum",
  location:     l1
)
g7 = u7.goodspots.create(
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
  category:     "Venue",
  location:     l1
)
g8 = u8.goodspots.create(
  name:         "Angel City Brewery",
  description:  "BEEEEEEER!",
  category:     "Tours",
  location:     l1
)
g9 = u9.goodspots.create(
  name:         "Torung",
  description:  "Cheap good-ass thai food!",
  category:     "Restaurant",
  location:     l1
)
g10 = u10.goodspots.create(
  name:         "The Regent Theatre",
  description:  "Beautiful old venue downtown on S. Main St.
                Saw really great show there last night, sound
                was fantastic!",
  category:     "Venue",
  location:     l1
)
g11 = u1.goodspots.create(
  name:         "La Luz de Jesus Gallery",
  description:  "La Luz de Jesus Gallery was established in 1986
                as the brainchild of entrepreneur and art collector
                Billy Shire, considered largely responsible for
                fostering a new school of California art and
                prompting JUXTAPOZ Magazine to dub him the
                Peggy Guggenheim of Lowbrow.",
  address:      "4633 Hollywood Boulevard Los Angeles CA 90027",
  url:          "http://laluzdejesus.com/",
  category:     "Art",
  location:     l1
)
g12 = u2.goodspots.create(
  name:         "Best Fish Taco in Encenada",
  description:  "Seriously it's the best!",
  url:          "http://www.bestfishtacoinensenada.com",
  category:     "Food",
  location:     l1
)
g13 = u3.goodspots.create(
  name:         "TOPANGA BEACH",
  description:  "For adventurous novices, the swells at Topanga Beach
                are a little easier to drop into and perfect for the
                beginner’s longboard. The only catch: conditions are
                so ideal you might have to compete with plenty of
                good surfers for waves.",
  category:     "Surfing",
  location:     l1
)
g14 = u4.goodspots.create(
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
  category:     "Movie Theater",
  location:     l1
)
g15 = u5.goodspots.create(
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
  category:     "Museum",
  location:     l1
)
g16 = u6.goodspots.create(
  name:         "The Satellite",
  description:  "A legendary tastemaker for the eastside indie rock set,
                the Satellite embraces (and makes stars of) rising bands
                from across the world and down the block. Musicians, writers,
                artists and those who love them meet to mingle and take in
                everything from experimental noise ensembles to alt-rock
                stars to arena headliners playing covert sets",
  url:          "http://www.thesatellitela.com/",
  category:     "Venue",
  location:     l1
)

g17 = u7.goodspots.create(
  name:         "The Busy Bee",
  description:  "Greasy breakfast!",
  category:     "Restaurant",
  location:     l2
)
g17 = u1.goodspots.create(
  name:         "The Middle East",
  description:  "Best Live Bands in Town!",
  category:     "Venue",
  location:     l2
)

