# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
campus_db = SQLite3::Database.new("campuses.db")
db.results_as_hash = true
campus_db.results_as_hash = true

# show students and campuses on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  @campuses = campus_db.execute("SELECT * FROM campuses")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/campuses/new' do
  erb :new_campus
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# create a route that will display student names that are located in NYC.
get '/campus/:campus' do
  @students = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  erb :student_nyc
end

# create new campuses via a form
post '/campuses' do
  campus_db.execute("INSERT INTO campuses (campus_name) VALUES (?)", [params['campus_name']])
  redirect '/'
end

# add static resources