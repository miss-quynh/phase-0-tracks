# 8.5 Combining SQL and Ruby

# Object Relational Mapping (ORM) is a programming technique for converting data between incompatible type systems using object-oriented programming languages. This creates, in effect, a "virtual object database" that can be used from within the programming language.

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("pokemon.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS pokemon(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    location VARCHAR(255),
    move VARCHAR(255)
  )
SQL

# create a pokemon table (if it's not there already)
db.execute(create_table_cmd)

# add a test pokemon
# db.execute("INSERT INTO pokemon (name, age, location, move) VALUES ('Pikachu', 1, 'Earth', 'electric shock')")

# add many pokemon characters
def create_pokemon(db, name, age, location, move)
  db.execute("INSERT INTO pokemon (name, age, location, move) VALUES (?, ?, ?, ?)", [name, age, location, move])
end

100.times do
  create_pokemon(db, Faker::Pokemon.name, 0, Faker::Pokemon.location, Faker::Pokemon.move)
end