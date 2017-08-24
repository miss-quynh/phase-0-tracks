# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/contact' do
  address = "2230 Durant Avenue, Berkeley, CA 94704"
end

get '/great_job' do
  if params[:name]
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

get '/:number_1/adds/:number_2' do
  sum = params[:number_1].to_i + params[:number_2].to_i
  "#{params[:number_1]} adds #{params[:number_2]} equals #{sum}"
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end



########################



# Release 1: Research on Your Own

# Is Sinatra the only web app library in Ruby? What are some others?
  # Another web app library in Ruby is the Padrino, which is a Ruby web framework that is built upon the Sinatra web library.

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
  # Other options for using a database with Sinatra include DataMapper and ActiveRecord.

# What is meant by the term web stack?
  # A Web stack is the utilization of various software for Web development, which typically contains an operating system (OS), a programming language, database software, and a Web server.