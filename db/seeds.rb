# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all
Attendance.destroy_all
Comment.destroy_all

user_1 = User.create(
                     first_name: "Veronika",
                     last_name: "Dodda",
                     username: "vdodda",
                     password: "password",
                     email: "veronika@gmail.com",
                     image: "https://easydrawingguides.com/wp-content/uploads/2018/09/Face-09.png",
                     city: "Union City",
                     state: "NJ")

user_2 = User.create(
    first_name: "Pablo",
    last_name: "Dodda",
    username: "pdodda",
    password: "password",
    email: "pablo@gmail.com",
    image: "https://i.pinimg.com/originals/a7/d6/17/a7d6175dd8135daae775f99412460dfc.jpg",
    city: "Union City",
    state: "NJ"
                     )

user_3 = User.create(
    first_name: "Alex",
    last_name: "Smith",
    username: "asmith",
    password: "password",
    email: "alex@gmail.com",
    image: "https://i.pinimg.com/originals/a7/d6/17/a7d6175dd8135daae775f99412460dfc.jpg",
    city: "New York",
    state: "NJ"
                     )

event_1 = Event.create(
    name: "Cooking with chef",
    value_proposition: "free dinner",
    event_type: "food",
    quantity: 2,
    image: 'https://www.wellandgood.com/wp-content/uploads/2019/12/Stocksy-cooking-for-one-Andrey-Pavlov.jpeg',
    details: "help cooking the mexican dinner for 10 ppl",
    date: "09-01-2020",
    city: "Jersey City",
    state: "NJ",
    user_id: user_1.id
)

event_2 = Event.create(
    name: "Puppet show assistance",
    value_proposition: "free access to show",
    event_type: "performance",
    quantity: 3,
    image: 'https://image.shutterstock.com/image-vector/childrens-performance-puppet-theater-price-600w-618132476.jpg',
    details: "help with decoration for pupper show",
    date: "09-22-2020",
    city: "New York",
    state: "NY",
    user_id: user_2.id
)

event_3 = Event.create(
    name: "Baby Sitter",
    value_proposition: "free dinner",
    event_type: "general help",
    quantity: 1,
    image: 'https://cachevalleyfamilymagazine.com/wp-content/uploads/2015/04/babysitting.jpg',
    details: "stay with 1 y.o baby for 3 hours",
    date: "10-02-2020",
    city: "New York",
    state: "NY",
    user_id: user_3.id
)

attendance_1 = Attendance.create(
    user_id: user_1.id,
    event_id: event_2.id,
    rating: 4.5
)

attendance_2 = Attendance.create(
    user_id: user_2.id,
    event_id: event_3.id,
    rating: 4.8
)
attendance_3 = Attendance.create(
    user_id: user_3.id,
    event_id: event_1.id,
    rating: 5
)

comment_1 = Comment.create(
    comment:"It was great helping such professional people, would love to repeat",
    date:'09-15-2020',
    user_id: user_3.id,
    event_id: event_1.id,
)

comment_2 = Comment.create(
    comment:"It was fun sitting with Anna, we've played a lot!",
    date:'09-01-2020',
    user_id: user_1.id,
    event_id: event_3.id,
)

comment_3 = Comment.create(
    comment:"Looking forward to spend time with baby Anna",
    date:'09-17-2020',
    user_id: user_2.id,
    event_id: event_3.id,
)

comment_4 = Comment.create(
    comment:"Loved this puppet show",
    date:'09-30-2020',
    user_id: user_3.id,
    event_id: event_2.id,
)

comment_5 = Comment.create(
    comment:"Looking forward to help with this Pupper Show",
    date:'10-01-2020',
    user_id: user_1.id,
    event_id: event_2.id,
)