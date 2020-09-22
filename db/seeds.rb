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

user_1 = User.create(
                     first_name: "veronika",
                     last_name: "dodda",
                     username: "vdodda",
                     password: "password",
                     email: "veronika@gmail.com",
                     image: "https://easydrawingguides.com/wp-content/uploads/2018/09/Face-09.png",
                     city: "union city",
                     state: "NJ")

user_2 = User.create(
    first_name: "pablo",
    last_name: "dodda",
    username: "pdodda",
    password: "password",
    email: "pablo@gmail.com",
    image: "https://i.pinimg.com/originals/a7/d6/17/a7d6175dd8135daae775f99412460dfc.jpg",
    city: "union city",
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
    city: "jersey city",
    state: "NJ",
    user_id: user_1.id
)

event_2 = Event.create(
    name: "Pupper show assistance",
    value_proposition: "free access to show",
    event_type: "performance",
    quantity: 3,
    image: 'https://image.shutterstock.com/image-vector/childrens-performance-puppet-theater-price-600w-618132476.jpg',
    details: "help with decoration for pupper show",
    date: "09-22-2020",
    city: "new york",
    state: "NY",
    user_id: user_1.id
)

attendance_1 = Attendance.create(
    user_id: user_1.id,
    event_id: event_1.id,
    rating: nil
)

attendance_2 = Attendance.create(
    user_id: user_2.id,
    event_id: event_2.id,
    rating: nil
)