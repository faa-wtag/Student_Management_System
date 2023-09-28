# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require 'faker'


#Seeding department model
eee = Department.create!(dept_name:"EEE", dept_code:"01")
cse = Department.create!(dept_name:"CSE", dept_code:"02")
mecha = Department.create!(dept_name:"ME", dept_code:"03")
ete = Department.create!(dept_name:"EEE", dept_code:"04")
ce = Department.create!(dept_name:"CIVIL", dept_code:"05")

a1 = User.create!(name:'admin1', email:'admin1@gmail.com', password:'45a321', role:'admin', phone:'+8801234567190', department_id:5)

a2= User.create!(name:'admin2', email:'admin2@gmail.com', password:'45a321', role:'admin', phone:'+8801234547190', department_id:5)

s1 = User.create!(name:'Ripa',email:'ripafarhana414@gmail.com',password:'123456',phone:'+8801866869218',role:'student',department_id: 4)

s2 = User.create!(name:'Refat',email:'refat@gmail.com', password:'123456',role:2, phone:'+8801234671920', department_id:3)

User.create!(name:'Keya',email:'keyadhar234@gmail.com',password:'123456',phone:'+880188869218',role:'student',department_id: 2)


s3 = User.create!(name:'Susmoy',password:'123456',phone:'+8801234567290',email:'sosmoy@gmail.com',role:'student', department_id: 1)


s4 = User.create!(name:'Ripa2',address:'Banani',password:'123456',phone:'+88012222567191',email:'ripa1@gmail.com',role:'student',student_department:cse)
s5 = User.create!(name:'Ripa3',address:'Banani',password:'123456',phone:'+8801244567191',email:'ripa2@gmail.com',role:'student',student_department:eee)
s6 = User.create!(name:'Ripa4',address:'Banani',password:'123456',phone:'+8801239567191',email:'ripa3@gmail.com',role:'student',student_department:ce)
s1 = User.create!(name:'Ripa5',address:'Banani',password:'123456',phone:'+8801234567191',email:'ripa5@gmail.com',role:'student',student_department:ete)



t1 = User.create!(name:'Faria',password:'990456',  phone:'+8801823344322',email:'farin@gmail.com',role:'teacher',department_id: 3)

t2 = User.create!(name:'Maliha',password:'980456', phone:'+8801827944322',email:'maliha@gmail.com',role:'teacher',department_id: 1)

t3 = User.create!(name:'Tonmoy',password:'999456', phone:'+8800918744322',email:'tonmoy@gmail.com',role:'teacher',department_id: 4)

#Sedding User Model
10.times do
     name = Faker::Name.name
     email = Faker::Internet.email
     password = Faker::Internet.password(min_length: 5, max_length: 10)
     role = [0,1,2].sample
     phone = Faker::PhoneNumber.cell_phone_in_e164

     User.create!(name:, email:, password:, role:, phone:)
end

#Seeding Course Model



course1 = Course.create!(course_title:"Computer Architecture", course_code:"CSE-331", department_id:2)

course2 = Course.create!(course_title:"Computer Network", course_code:"CSE-311", department_id:2)

course3 = Course.create!(course_title:"Database Management", course_code:"admin-351", department_id:5)

course4 = Course.create!(course_title:"Mechincal Drawing", course_code:"ME-221", department_id: 3)

Course.create!(course_title:"Thermo Dynamics", course_code:"ME-321", department_id: 3)

course5 = Course.create!(course_title:"Digital Electronic", course_code:"EEE-131", department_id: 1)

course6 = Course.create!(course_title:"Electronic Devices", course_code:"EEE-301", department_id: 1)

course7 = Course.create!(course_title:"Analog Electronics", course_code:"admin-201", department_id:5)

course8 = Course.create!(course_title:"Electronics Signal", course_code:"ETE-209", department:5)

course9 = Course.create!(course_title:"Soil Mechanics", course_code:"CIVIL-305", department_id:4)

course10 = Course.create!(course_title:"Structural Enginerring", course_code:"CIVIL-101", department_id:4)



CourseUser.create!(user_id:2, course_id:2)
    
