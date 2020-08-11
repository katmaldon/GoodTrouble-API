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
Quote.destroy_all


puts "Seeded"

events = Event.create([{
    title: "BLM March",
    image: "3pm",
    date: "2020-10-05",
    time: "",
    location: "Brooklyn",
    url: "blm.org",
    },
    {
    title: "BLM March 2",
    image: "4pm",
    date: "2020-10-05",
    time: "",
    location: "Brooklyn",
    url: "blm.org",
    },
    {
    title: "BLM March 3",
    image: "5pm",
    date: "2020-10-05",
    time: "",
    location: "Brooklyn",
    url: "blm.org"
    },
    {
    title: "BLM March 4",
    image: "",
    date: "2020-10-05",
    time: "5pm",
    location: "Brooklyn",
    url: "blm.org"
    },
    {
    title: "BLM March 5",
    image: "",
    date: "2020-10-05",
    time: "6pm",
    location: "Brooklyn",
    url: "blm.org"
    },
    {
    title: "BLM March 6",
    image: "",
    date: "2020-10-05",
    time: "10am",
    location: "Brooklyn",
    url: "blm.org"
    },
    {
    title: "BLM March 7",
    image: "",
    date: "2020-10-05",
    time: "11am",
    location: "Brooklyn",
    url: "blm.org"
    },
    {
    title: "BLM March 8",
    image: "",
    date: "2020-10-05",
    time: "12pm",
    location: "Brooklyn",
    url: "blm.org"
    },
    {
    title: "BLM March 9",
    image: "",
    date: "2020-10-05",
    time: "1pm",
    location: "Brooklyn",
    url: "blm.org"
    },
    {
    title: "BLM March 10",
    image: "",
    date: "2020-10-05",
    time: "10am",
    location: "Brooklyn",
    url: "blm.org"
    }
])

resources = Resource.create([{
    title: "Know your rights",
    description: "Basic right to protest and legel representation",
    url: "aclu.com"
},
{
    title: "What to bring",
    description: "preparation for protests",
    url: "humanrights.org"
}])

notes = Note.create([{
    text: "order KN95s",
    completed: false
    },
    {
    text: "order food and drinks for organizer picnic",
    completed: false
    },
    {
    text: "contact lawyer to review petitions",
    completed: false
    }
])

user = User.create([{
    username: "Kat",
    age: 35,
    location: "Brooklyn, NY",
    interests: "Activist/Organizer. Creature of havoc. Dissent is patriotism.",
    image_url: "https://i.imgur.com/td8DG0k.jpg?1"
}])

quotes = Quote.create([{
    text: 'Not everything that is faced can be changed, but nothing can be changed until it is faced. - James Baldwin',
    },
    {text:'Prejudice is a burden that confuses the past, threatens the future and renders the present inaccessible. - Dr. Maya Angelou'
    },
    {text:'You must be bold, brave, and courageous and find a way... to get in the way. - John Lewis'
    },
    {text: 'In the end, we will remember not the words of our enemies, but the silence of our friends. - Martin Luther King, Jr.'
    }])

books = Book.create([{
    title: "Book",
    description: "a book about stuff",
    url: "buyhere.com"
    },
    {
    title: "Book",
    description: "a book about stuff",
    url: "buyhere.com"
    }])

