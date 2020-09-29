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
    state: "NY"
                     )
 user_4 = User.create(
    first_name: "Helen",
    last_name: "Apple",
    username: "happle",
    password: "password",
    email: "helen@gmail.com",
    image: "https://static4.depositphotos.com/1002355/312/v/450/depositphotos_3124150-stock-illustration-beautiful-woman-face.jpg",
    city: "Brooklyn",
    state: "NY"
                     )

user_5 = User.create(
   first_name: "Mike",
   last_name: "Johnson",
   username: "jmike",
   password: "password",
   email: "mike@gmail.com",
   image: "https://i.pinimg.com/originals/4a/a8/79/4aa8791eff77ff792cd39237835cf266.jpg",
   city: "Hoboken",
   state: "NJ"
                    )

event_1 = Event.create(
    name: "Cooking with chef",
    value_proposition: "free dinner",
    event_type: "food",
    quantity: 2,
    image: 'https://www.wellandgood.com/wp-content/uploads/2019/12/Stocksy-cooking-for-one-Andrey-Pavlov.jpeg',
    details: "help cooking the mexican dinner for 10 ppl, learn the skill of cooking",
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
    details: "help with decoration for pupper show, have fun with good people",
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
    details: "stay with 1 year old baby Anna for 3 hours, at hosts place",
    date: "10-02-2020",
    city: "New York",
    state: "NY",
    user_id: user_3.id
)

event_4 = Event.create(
    name: "Be a Bookworm",
    value_proposition: "unlimites access to book",
    event_type: "general help",
    quantity: 4,
    image: 'https://www.shoreupdate.com/wp-content/uploads/2019/05/looking-for-a-book.jpg',
    details: "Local public library needs volunteers to read to children",
    date: "10-15-2020",
    city: "Brooklyn",
    state: "NY",
    user_id: user_4.id
)

event_5 = Event.create(
    name: "Become a Coach",
    value_proposition: "get free access to the stadium",
    event_type: "sport event",
    quantity: 3,
    image: 'https://globalsportmatters.com/wp-content/uploads/2018/06/Father-and-kids.jpg',
    details: "Volunteer to lead a child’s sports team through in local school",
    date: "10-10-2020",
    city: "Hoboken",
    state: "NJ",
    user_id: user_5.id
)

event_6 = Event.create(
    name: "Teach Tech",
    value_proposition: "free computer",
    event_type: "tech",
    quantity: 5,
    image: 'https://wp-static.coderdojo.com/uploads/2015/11/Screen-Shot-2015-11-19-at-14.08.24.png',
    details: "Use your technical knowledge to help the shcools teach kids how to code",
    date: "10-20-2020",
    city: "Long island",
    state: "NY",
    user_id: user_1.id
)

event_7 = Event.create(
    name: "Tutor a Child",
    value_proposition: "free dinner",
    event_type: "general help",
    quantity: 1,
    image: 'https://www.greatschools.org/gk/wp-content/uploads/2010/01/Looking-for-a-tutor.jpg',
    details: "Local school needs tutoring help for students.",
    date: "10-10-2020",
    city: "Los Angeles",
    state: "CA",
    user_id: user_2.id
)

event_8 = Event.create(
    name: "Serve Food",
    value_proposition: "free lunch",
    event_type: "serve food",
    quantity: 10,
    image: 'https://blanchethouse.org/wp-content/uploads/2020/07/BlanchetHousLunchServiceJuly2020.jpg',
    details: "Need extra help for the holidays in local Church",
    date: "12-20-2020",
    city: "Miami",
    state: "FL",
    user_id: user_3.id
)

event_9 = Event.create(
    name: "Throw a Birthday Party",
    value_proposition: "free dinner from Seamless",
    event_type: "general help",
    quantity: 3,
    image: 'https://bigfday.com/blog/wp-content/uploads/2019/10/Untitled-design1-1024x538.jpg',
    details: "Complete with cake and presents — for a child or family affected by homelessness",
    date: "11-30-2020",
    city: "Jersey City",
    state: "NJ",
    user_id: user_4.id
)

event_10 = Event.create(
    name: "Host a Children’s Event ",
    value_proposition: "free food",
    event_type: "general help",
    quantity: 3,
    image: 'https://images.squarespace-cdn.com/content/v1/5565fa8ae4b06d42f0f07866/1526312487965-B6AE8ZXG3G8Q9O83XL3E/ke17ZwdGBToddI8pDm48kA_SSaoz4elkj-HsZd8gX3Z7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UWPwZyNcweDIvdeL5kotwkIXjs9g0WibSO_cU-Ijy4Pwg6poS-6WGGnXqDacZer4yQ/35839959952_27a32c1f54_k.jpg?format=1500w',
    details: "Include games, music, inflatables and other kid-friendly attractions",
    date: "10-25-2020",
    city: "Staten Island",
    state: "NY",
    user_id: user_5.id
)

event_11 = Event.create(
    name: "Hold a Blood Drive ",
    value_proposition: "free dinner",
    event_type: "donate",
    quantity: 2,
    image: 'https://www.clarecountycleaver.net/uploads/original/20200317-093823-blood.jpg',
    details: "The American Red Cross and local blood banks are looking for organizations to host",
    date: "11-15-2020",
    city: "New York",
    state: "NY",
    user_id: user_1.id
)

event_12 = Event.create(
    name: "Put on a Show ",
    value_proposition: "free 3 tickets to show",
    event_type: "performance",
    quantity: 4,
    image: 'https://cdn0.wideopencountry.com/wp-content/uploads/2017/12/Nashville-793x526.png',
    details: "If you’re musically inclined, cheer up patients in hospitals with a concert",
    date: "11-10-2020",
    city: "Hoboken",
    state: "NJ",
    user_id: user_2.id
)

event_13 = Event.create(
    name: "Ballet Dancers Needed",
    value_proposition: "free tickets to the show",
    event_type: "performance",
    quantity: 5,
    image: 'https://images.squarespace-cdn.com/content/v1/55d0c478e4b0e7d52e754e91/1550851714566-FCR8TELYBZILBKECFJMB/ke17ZwdGBToddI8pDm48kA_SSaoz4elkj-HsZd8gX3Z7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UWPwZyNcweDIvdeL5kotwkIXjs9g0WibSO_cU-Ijy4Pwg6poS-6WGGnXqDacZer4yQ/2018_03_29_duke_ballet_dance_performance-0441.jpg',
    details: "5 dancers needed to perform in the local theater for the Christmas Event ",
    date: "12-24-2020",
    city: "New York",
    state: "NY",
    user_id: user_3.id
)

event_14 = Event.create(
    name: "Maintain a Little Free Library",
    value_proposition: "free books",
    event_type: "general help",
    quantity: 1,
    image: 'https://timisoaratourism.com/wp-content/uploads/2019/02/BookCrossing.jpg',
    details: "These small outdoor hutches are full of books.",
    date: "10-02-2020",
    city: "Los Angeles",
    state: "CA",
    user_id: user_4.id
)

event_15 = Event.create(
    name: "Host an Exchange Student",
    value_proposition: "financial support for the student",
    event_type: "general help",
    quantity: 10,
    image: 'https://3frc1t1a7amucpi331ueys21-wpengine.netdna-ssl.com/wp-content/uploads/2019/06/Horizontal-female-student-1024x683.jpg',
    details: "It’s a great way to learn about another culture.",
    date: "12-10-2020",
    city: "New York",
    state: "NY",
    user_id: user_5.id
)

event_16 = Event.create(
    name: "Be a Landscaper ",
    value_proposition: "free plants",
    event_type: "plant",
    quantity: 6,
    image: 'https://s.hdnux.com/photos/76/02/16/16262051/3/920x920.jpg',
    details: "Plant flowers and plants in public areas and right-of-ways in parks",
    date: "10-18-2020",
    city: "New York",
    state: "NY",
    user_id: user_1.id
)

event_17 = Event.create(
    name: "Clean Up in Central Park",
    value_proposition: "free food",
    event_type: "general help",
    quantity: 8,
    image: 'https://d17wymyl890hh0.cloudfront.net/new_images/blog/_576x424_crop_center-center_100/blog-rect@2x-How-We-Keep-Clean-2.jpg?mtime=20191025124135',
    details: "Spend a day cleaning up in Central Park, spend a day enjoying the park",
    date: "10-20-2020",
    city: "New York",
    state: "NY",
    user_id: user_2.id
)

event_18 = Event.create(
    name: "Spread Learning",
    value_proposition: "free lunch",
    event_type: "general help",
    quantity: 2,
    image: 'https://imagesvc.meredithcorp.io/v3/jumpstartpure/image?url=https://static.onecms.io/wp-content/uploads/sites/38/2015/06/12212707/ptZXJoNDE6VcTQESUceFWdumf0dS14V-.png&w=1280&h=720&q=90&c=cc',
    details: "Read or play with kids at a local school or daycare",
    date: "12-01-2020",
    city: "Jersey City",
    state: "NJ",
    user_id: user_3.id
)

event_19 = Event.create(
    name: "Lend an Ear",
    value_proposition: "free food",
    event_type: "general help",
    quantity: 4,
    image: 'https://images.wisegeek.com/female-nurse-talking-to-elderly-women.jpg',
    details: "Visit a local nursing home to play cards, eat lunch or just chat with residents.",
    date: "12-02-2020",
    city: "New York",
    state: "NY",
    user_id: user_4.id
)

event_20 = Event.create(
    name: "Volunteer at Vet Hospital",
    value_proposition: "free food",
    event_type: "general help",
    quantity: 5,
    image: 'https://www.thesprucepets.com/thmb/bd19fOh2b6PKHL-1KxlBvizsuEw=/2121x1414/filters:fill(auto,1)/female-patient-hugging-a-therapy-dog-in-a-hospital-465131587-5c59c130c9e77c0001d00d86.jpg',
    details: "Help to assist vet doctors to care of aminals",
    date: "11-24-2020",
    city: "New York",
    state: "NY",
    user_id: user_5.id
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
attendance_4 = Attendance.create(
    user_id: user_4.id,
    event_id: event_9.id,
    rating: 4.5
)

attendance_5 = Attendance.create(
    user_id: user_5.id,
    event_id: event_10.id,
    rating: 4.8
)
attendance_6 = Attendance.create(
    user_id: user_1.id,
    event_id: event_8.id,
    rating: 5
)
attendance_7 = Attendance.create(
    user_id: user_2.id,
    event_id: event_20.id,
    rating: 4.5
)

attendance_8 = Attendance.create(
    user_id: user_3.id,
    event_id: event_19.id,
    rating: 4.8
)
attendance_9 = Attendance.create(
    user_id: user_4.id,
    event_id: event_18.id,
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
    event_id: event_2.id,
)

comment_3 = Comment.create(
    comment:"Looking forward to spend time with baby Anna",
    date:'09-17-2020',
    user_id: user_2.id,
    event_id: event_3.id,
)

comment_4 = Comment.create(
    comment:"It was nice helping with books",
    date:'09-30-2020',
    user_id: user_3.id,
    event_id: event_4.id,
)

comment_5 = Comment.create(
    comment:"It was great play sport with kids",
    date:'10-01-2020',
    user_id: user_4.id,
    event_id: event_5.id,
)
comment_6 = Comment.create(
    comment:"It was fun sitting teaching kids!",
    date:'09-15-2020',
    user_id: user_5.id,
    event_id: event_6.id,
)

comment_7 = Comment.create(
    comment:"It was fun sitting teaching kids!",
    date:'09-01-2020',
    user_id: user_1.id,
    event_id: event_7.id,
)

comment_8 = Comment.create(
    comment:"Looking forward to help",
    date:'09-17-2020',
    user_id: user_2.id,
    event_id: event_8.id,
)

comment_9 = Comment.create(
    comment:"Loved to make kids happy",
    date:'09-30-2020',
    user_id: user_3.id,
    event_id: event_9.id,
)

comment_10 = Comment.create(
    comment:"Looking forward to help!",
    date:'10-01-2020',
    user_id: user_4.id,
    event_id: event_10.id,
)
comment_11 = Comment.create(
    comment:"It was great helping such professional people, would love to repeat",
    date:'09-15-2020',
    user_id: user_5.id,
    event_id: event_11.id,
)

comment_12 = Comment.create(
    comment:"Great place to perform with talented people",
    date:'09-01-2020',
    user_id: user_1.id,
    event_id: event_12.id,
)

comment_13 = Comment.create(
    comment:"Great place to perform with talented people",
    date:'09-17-2020',
    user_id: user_2.id,
    event_id: event_13.id,
)

comment_14 = Comment.create(
    comment:"Loved to mantain this tiny library",
    date:'09-30-2020',
    user_id: user_3.id,
    event_id: event_14.id,
)

comment_15 = Comment.create(
    comment:"Great volunteer oppotrunity",
    date:'10-01-2020',
    user_id: user_4.id,
    event_id: event_15.id,
)
comment_16 = Comment.create(
    comment:"I'm looking forward for this event",
    date:'09-15-2020',
    user_id: user_5.id,
    event_id: event_16.id,
)

comment_17 = Comment.create(
    comment:"Love central park!",
    date:'09-01-2020',
    user_id: user_1.id,
    event_id: event_17.id,
)

comment_18 = Comment.create(
    comment:"Looking forward to help with the kids",
    date:'09-17-2020',
    user_id: user_2.id,
    event_id: event_18.id,
)

comment_19 = Comment.create(
    comment:"Loved this place, very kidd people",
    date:'09-30-2020',
    user_id: user_3.id,
    event_id: event_19.id,
)

comment_20 = Comment.create(
    comment:"Looking forward to help with animals",
    date:'10-01-2020',
    user_id: user_4.id,
    event_id: event_20.id,
)