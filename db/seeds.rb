# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require 'faker'


#Seeding department model
Department.create!(dept_name:"EEE", dept_code:"01")
Department.create!(dept_name:"CSE", dept_code:"02")
Department.create!(dept_name:"ME", dept_code:"03")
Department.create!(dept_name:"EEE", dept_code:"04")
Department.create!(dept_name:"CIVIL", dept_code:"05")

#Seeding Course Model

Course.create!(course_title:"Computer Architecture", course_code:"CSE-331", department_id:2)
Course.create!(course_title:"Computer Network", course_code:"CSE-311", department_id:2)
Course.create!(course_title:"Database Management", course_code:"admin-351", department_id:5)
Course.create!(course_title:"Mechincal Drawing", course_code:"ME-221", department_id: 3)
Course.create!(course_title:"Thermo Dynamics", course_code:"ME-321", department_id: 3)
Course.create!(course_title:"Digital Electronic", course_code:"EEE-131", department_id: 1)
Course.create!(course_title:"Electronic Devices", course_code:"EEE-301", department_id: 1)
Course.create!(course_title:"Analog Electronics", course_code:"admin-201", department_id:5)
Course.create!(course_title:"Electronics Signal", course_code:"admin-209", department_id:5)
Course.create!(course_title:"Soil Mechanics", course_code:"CIVIL-305", department_id:4)
Course.create!(course_title:"Structural Enginerring", course_code:"CIVIL-101", department_id:4)

