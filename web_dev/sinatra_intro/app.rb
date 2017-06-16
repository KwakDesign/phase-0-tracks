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

# write a GET route that retrieves an address
get '/address/:address' do
  address = params[:address]
  "My address is #{params[:address]}."
end

# write a GET route that retrieves a person's name and say 'Good job, [person's name]!'
get '/great_job/' do
  person_name = params[:person_name]
  if person_name
    "Good job, #{params[:person_name]}!"
  else
    "Good job!"
  end
end

# write GET route parameters to add two numbers and return the result.
get '/:num_1/plus/:num_2' do
  sum = "#{params[:num_1]}".to_i + "#{params[:num_2]}".to_i
  sum.to_s
end

# write a GET route parameter that allows you to search for the names of students going to the campus in NYC.
get '/students/campus/:campus' do
  students = db.execute("SELECT name FROM students WHERE campus=?", [params[:campus]])
  response = ''
  students.each do |student|
    response << "#{student['name']} goes to the NYC campus.<br><br>"
  end
  response
end

# multi parameter version, here we can retrieve students from two parameters. i.e. /students/age/62 or /students/campus/NYC
# get '/students/:param/:match' do
#   student = db.execute("SELECT * FROM students WHERE #{params[:param]}=?", [params[:match]])
#   student.to_s
# end