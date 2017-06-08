# OPERATION KITTY EXPLOSION

# Talk about Object Relational Mapping (ORM)
# How do we take relational data and use it in an Object Orientated language? This is sometimes referred to as Object Realtional Management which is kind of similar but not necessarily the same thing.

# require gems, install them if they aren't already.
require 'sqlite3' # lets you create a SQLite3 db
require 'faker' # lets you create fake data to testing purposes.

# create SQLite3 database
db = SQLite3::Database.new("kittens.db")
# by utilizing this special instance attribute method it will impact how the gem SQLite3 chooses to deliver our data in this case as a hash.
db.results_as_hash = true
# the output will be:
# [{"id"=>1, "name"=>"Bob", "age"=>10, 0=>1, 1=>"Bob", 2=>10}, {"id"=>2, "name"=>"Bob", "age"=>10, 0=>2, 1=>"Bob", 2=>10}]
# notice how the outside is still an array and notice how it gives us index values for each value...

# db.execute("SELECT * FROM kittens") <= the execute methods called on db converts the string into SQL.

# learn about fancy string delimiters, Ruby has a lot of different ways to declare a string
# using a delimeter known as heredoc which is supported by Ruby and available in other languages lets us get away with using single or double quotes...meaning we don't have to worry about them. The heredoc starts with '<<-[you call this whatever you want as long as this doesn't appear in the body]' and ends with '[whatever you called it in the beginning...]'.
# So in this exercise the word in caps 'SQL' cannot be in the body.
# Note the IF NOT EXISTS line in the line where we create the table kittens, this is valid SQL saying that if the table exists don't create it.
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens.
#KittenExplosion
def create_kitten(db, name, age)
  # with the .execute method, instead of creating a single hard coded kitten we can put in ? marks as place holders for the VALUE and pass in an optional second argument between brackets which take an array of values in the order they appear in this example 'name, age'
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

100.times do
  # here we are using the faker gem we applied above for the 'name' argument
  # the :: is a scope resolution operator which is for name-spacing it basically means classes and modules which are basically what gems are they can have nested classes and modules inside of them for organizational purposes.
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")

# puts kittens.class
# it's good idea to run .class method on something when dealing with ORM because it may look like an array or hash but it's really a proprietary version of the class whether it's an array or hash because it usually means it has extra methods not available in it's regular counterparts which is neat.

# p kittens

# but now we can run a each method to loop through the database
# kittens.each do |kitten|
#   puts "#{kitten['name']} is #{kitten['age']}."
# end
