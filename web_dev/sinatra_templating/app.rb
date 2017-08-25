# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

food_db = SQLite3::Database.new("food.db")
food_db.results_as_hash = true


# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources




# suggest food to eat based on preference
get '/suggest/food' do
  @food = food_db.execute("SELECT * FROM food")
  erb :food
end

# create a form for a student to record his or her meal
post '/food' do
  food_db.execute("INSERT INTO food (day_of_the_week, meal, type_of_food) VALUES (?,?,?)", [params['day_of_the_week'], params['meal'], params['type_of_food']])
  redirect '/suggest/food'
end
