require "pry"
require "sqlite3"


# Open a database
db = SQLite3::Database.new "test.db"


binding.pry

puts "Done"