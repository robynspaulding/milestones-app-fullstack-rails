# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#birthday: date input day/month/year
User.create(
  name: "Karin Jones",
  email: "kj@test.com",
  password: "password",
  birthday: "17/07/1997",
  image: "https://media.istockphoto.com/vectors/stressed-mom-of-twins-trying-to-relax-vector-cartoon-illustration-vector-id1364137237?k=20&m=1364137237&s=612x612&w=0&h=BtcKc0fPQoPs2CtQIzHKs077-WaE9DA_elRRXfG-nH4="
)


User.create(
  name: "Harry Jones",
  email: "hj@test.com",
  password: "password",
  birthday: "01/12/1993",
  image: "https://thumbs.dreamstime.com/z/superdad-twin-babies-cartoon-illustration-superhero-dad-holding-identical-twins-isolated-white-background-95220404.jpg"
)

Kid.create(
  first_name: "Sam",
  last_name: "Jones",
  birthday: "22/03/2021",
  image: "https://i.etsystatic.com/29607994/r/il/209182/3065750176/il_1588xN.3065750176_k33g.jpg"
)

Kid.create(
  first_name: "Sara",
  last_name: "Jones",
  birthday: "22/03/2021",
  image: "https://previews.123rf.com/images/djvstock/djvstock1704/djvstock170416892/76668012-cute-baby-girl-with-pink-bows-cartoon-icon-over-white-background-colorful-design-vector-illustration.jpg"
)

Familytree.create(
  name: "Dina Jones",
  relationship_to_user: "Mother",
  birthday: "12/01/1965",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRICZSBfC3Y61rv_w5HXHqmJkwHzx1_-QcQkg&usqp=CAU"
)

Familytree.create(
  name: "Samuel Jones",
  relationship_to_user: "Father",
  birthday: "10/03/1961",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuX5fZJGHMMqMAnJ1i2y1I73rS20y7vzVstQ&usqp=CAU"
)

Milestone.create(
  name: "Sam",
  date: "10/02/2021",
  milestone: "Smile",
  description: "Sam smiled for the first time today while singing with Daddy!",
  image: "https://us.123rf.com/450wm/sararoom/sararoom1612/sararoom161200017/68873964-illustration-of-cartoon-cute-baby.jpg?ver=6"
)
Milestone.create(
  name: "Sarah",
  date: "03/05/2021",
  milestone: "Crawling",
  description: "Sara sat up for the first time today while reading books with Mom",
  image: "https://www.nicepng.com/png/detail/889-8898894_when-baby-is-wriggling-rolling-over-or-crawling.png"
)

Photo.create(
  image_url: "https://www.how-to-draw-funny-cartoons.com/images/cartoon-kids-8.gif",
  description: "John playing baseball",
  date: "10/03/2018",
  kid_id: 3
)

Photo.create(
  image_url: "https://t3.ftcdn.net/jpg/02/09/64/60/360_F_209646036_ToQt0ASLYWlE6qY7UlgUqqtwv2aM3RJN.jpg",
  description: "Sarah playing at the park with friends",
  date: "07/03/2021",
  kid_id: 2
)