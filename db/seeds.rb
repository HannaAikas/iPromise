# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(id: 11, mobile: "07737700102", firstname: 'hanna', email: 'testing1000@test.com', password: 'test')
user.save!
user.promises.create(id: 1, users_id: 1, end_datetime: "2019-10-04 11:08:49.347498")
