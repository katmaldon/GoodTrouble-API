# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Event.destroy_all
Note.destroy_all
User.destroy_all
Book.destroy_all
Resource.destroy_all
Donation.destroy_all
Petition.destroy_all


puts "Seeded"

events = Event.create([{
    title: "BLM March",
    date: "2020-10-05",
    time: "3pm",
    location: "Brooklyn Bridge Park",
    url: "blm.org",
    },
    {
    title: "Trans Lives Matter",
    date: "2020-09-17",
    time: "1pm",
    location: "Manhattan City Hall",
    url: "thetrevorproject.org",
    },
    {
    title: "Warriors In The Garden",
    date: "2020-08-29",
    time: "12pm",
    location: "Barclay Center",
    url: "warriorsinthegarden.org"
    },
    {
    title: "Defund and Disarm NYPD",
    date: "2020-11-28",
    time: "5pm",
    location: "New York Public Library",
    url: "afsc.org"
    },
    {
    title: "Art Speaks Gala (free)",
    date: "2020-10-05",
    time: "7pm",
    location: "Brooklyn Museum",
    url: "brooklynmuseum.org"
    },
    {
    title: "Justice for Elijah",
    date: "2020-08-25",
    time: "7pm",
    location: "Washington Square Park",
    url: "nyphilharmonic.org"
    },
    {
    title: "Block The Bridge",
    date: "2020-09-07",
    time: "5pm",
    location: "Manhattan Bridge",
    url: "blm.org"
    },
    {
    title: "March for Votes",
    date: "2020-10-20",
    time: "12pm",
    location: "B'Way/Wall St, northbound",
    url: "vote.org"
    }
])

resources = Resource.create([{
    title: "Your rights as an activist",
    description: "overview of he protections/limitations of the First Amendment",
    url: "aclu.com"
},
{
    title: "Protest Dos and Don'ts",
    description: "what (not) to bring to a demonstration to stay safe and assist others",
    url: "amnestyusa.org"
},
{
    title: "Open your lobby",
    description: "local businesses that accommodate protesters in need of a rest stop",
    url: "openyourlobby.nyc"
},
{
    title: "Mass Defense Program",
    description: "National Lawyers Guild offering free legal help to protesters and activists",
    url: "nlg.org"
}])

donations = Donation.create!([{
    organization: "BLM Org",
    description: "All funds go to BLM cause, details on website.",
    url: "blm.com",
    donated: false
},
{
    organization: "Public Bail Funds",
    description: "Bail fund for non-violent offenders awaiting trial",
    url: "brooklynbailfund.org",
    donated: true
}])


petitions = Petition.create([{
    cause: "Justice for Breonna Taylor",
    description: "arrest the cops who killed Breonna Taylor",
    to: "",
    url: "justiceforbreonna.com",
    signed: false
},
{
    cause: "A51",
    description: "budget for NYPD",
    to: "City Commissioner",
    url: "defund.com",
    signed: true
}])

# notes = Note.create([{
#     text: "order KN95s",
#     completed: false
# },
# {
#     text: "order food and drinks for organizer picnic",
#     completed: false
# },
# {
#     text: "contact lawyer to review petitions",
#     completed: false
# }])

# user_events = UserEevent.create([{

#     user_id:
#     event_id
#     t.boolean "favorite"
#     t.boolean "going"
#     }])

user = User.create([{
    username: "Kat",
    age: 35,
    location: "Brooklyn, NY",
    interests: "Activist/Organizer. Creature of havoc. Dissent is patriotism.",
    image_url: "https://i.imgur.com/td8DG0k.jpg?1"
}])

books = Book.create([{
    title: "Until We Reckon - Violence, Mass Incarceration, and a Road to Repair",
    author: "Danielle Sered",
    description: "Danielle Sered is the executive director of Common Justice, a restorative justice program based in Brooklyn, New York. In her book, Until We Reckon, she offers ideas on how to help end the mass incarceration of Americans who've committed violent offenses. It's a must-read for people advocating to reform the criminal justice system.",
    url: "booksaremagic.net"
    },
    {
    title: "Walking with the Wind",
    author: "John Lewis",
    description: "Forty years ago, a teenaged boy stepped off a cotton farm in Alabama and into the epicenter of the struggle for civil rights in America, where he has remained to this day, committed still to the nonviolent ideals of his mentor Martin Luther King and the movement they both served. John Lewis's life, which he tells with charm, warmth, and toughness, ranges across the battlefields of the civil rights movement -- Selma, Montgomery, Birmingham, Mississippi.",
    url: "booksaremagic.net"
    },
    {
    title: "Notes of a Native Son",
    author: "James Baldwin",
    description: "James Baldwin’s essays on life in Harlem, the protest novel, movies, and African Americans abroad are as powerful today as when they were first written.",
    url: "booksaremagic.net"
    },
    {
    title: "How I Shed My Skin: Unlearning the Racist Lessons of a Southern Childhood",
    author: "Jim Grimsley",
    description: "More than sixty years ago, the Supreme Court ruled in Brown v. Board of Education that America’s schools could no longer be segregated by race. Critically acclaimed novelist Jim Grimsley was eleven years old in 1966 when federally mandated integration of schools went into effect in the state and the school in his small eastern North Carolina town was first integrated.",
    url: "booksaremagic.net"
    },
    {
    title: "The New Jim Crow",
    author: "Michelle Alexander",
    description: "Once in a great while a book comes along that changes the way we see the world and helps to fuel a nationwide social movement. The New Jim Crow is such a book. Universally praised, this book directly challenges the notion that the election of Barack Obama signals a new era of colorblindness.",
    url: "booksaremagic.net"
    }
    ])

