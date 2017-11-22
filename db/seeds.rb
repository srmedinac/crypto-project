# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name:"James Bond Rodriguez",username:"jbondz",birth:Date.parse('1980-05-10'),email:"jbondz123@something.com");
User.create(name:"Cristiano Ronaldo",username:"cr7",birth:Date.parse('1970-01-10'),email:"cr7@something.com");
User.create(name:"Roberto Carlos",username:"rb3",birth:Date.parse('1984-06-10'),email:"rb3@something.com");
User.create(name:"Neymar",username:"ney",birth:Date.parse('1986-11-10'),email:"ney@something.com");
User.create(name:"Goku",username:"goku123",birth:Date.parse('1988-08-10'),email:"goku123@something.com");
