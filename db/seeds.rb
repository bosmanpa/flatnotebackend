# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'database_cleaner'
require 'betterlorem'

DatabaseCleaner.clean_with(:truncation)


User.create(name: "User #1", username: "user1" )
User.create(name: "User #2", username: "user2" )

10.times do
Note.create(
    title: BetterLorem.w(3, true), 
    body: BetterLorem.p(1,true), 
    user_id: 1)
end

10.times do
    Note.create(
        title: BetterLorem.w(3, true), 
        body: BetterLorem.p(1,true), 
        user_id: 2)
    end

tag_array = ["ruby", "rails", "javascript", "react"]

tag_array.each do |tag|
    Tag.create(name: tag)
end