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