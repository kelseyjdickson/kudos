# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Teacher.destroy_all
Student.destroy_all
Kudo.destroy_all

puts "starting seeds"

Teacher.create([
    {   
        teacher_name: "Ms. Rios",
        subject: "Intro to Rails",
        room: 201,
        username:"Ms.Rios",
        password:"sedona"

    },
    {   
        teacher_name: "Mr. Hernandez",
        subject: "Feelings",
        room: 203,
        username:"Mr.H",
        password:"feelings"

    },
    {   
        teacher_name: "Mr. Hollander",
        subject: "JavaScript 101",
        room: 432,
        username:"Mr.Hollander",
        password:"yarn"

    },
    {   
        teacher_name: "Mr. Fournier",
        subject: "Intro to Programming",
        room: 111,
        username:"Mr.Fournier",
        password:"yay"

    },
    {
    teacher_name: "Mr. Flombaum",
    subject: "Intro to Flatiron",
    room: 999,
    username:"Mr.F",
    password:"code"
    }
])
puts "Done seeding Teacher"

puts "Starting to seed Student"

Student.create([
    {
       name: "Kelsey Dickson",
       grade: 10

    },
    {
        name: "Ge Tian",
        grade: 12
 
     },
     {
        name: "Jacie Calixte",
        grade: 10
 
     },
     {
        name: "Time Darden",
        grade: 10
 
     },
     {
        name: "Zeynab Jibreel",
        grade: 10
 
     },
     {
        name: "Tricia Dros",
        grade: 10
 
     }

])


puts "Done seeding Student"

puts "Starting to Seed Kudos"

Kudo.create([
    {
        kudo: "Excellent Work, You are nailing the concepts!",
        teacher_id: 1,
        student_id: 1

    },
    {
        kudo: "Learning is never done without errors and defeat.",
        teacher_id: 2,
        student_id: 2

    },
    {
        kudo: "A person who never made a mistake never tried anything new.",
        teacher_id: 3,
        student_id: 3

    },
    {
        kudo:  "Don't let what you cannot do interfere with what you can do!",
        teacher_id: 4, 
        student_id: 4

    },
    {
        kudo: "The beautiful thing about learning is that no one can take it away from you!",
        teacher_id: 5,
        student_id: 5

    },
    {
        kudo: "Education is the passport to the future, for tomorrow belongs to those who prepare for it today.",
        teacher_id: 4,
        student_id: 6

    },
    {
        kudo: "Amazing! You are an incredible student!",
        teacher_id: 3,
        student_id: 2

    },
    {
        kudo: "I am so proud of your progress, great job!",
        teacher_id:5,
        student_id: 2

    },
    {
        kudo: "The expert in anything was once a beginner.",
        teacher_id: 4, 
        student_id: 6
        
    }
    
])

puts "Done seeding!!!!!!!!!!!"