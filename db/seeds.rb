# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.delete_all

open(Rails.root.join("db/people.tsv").to_s) do |f|
  f.each_line do |line|
    name, email, prefecture, tel = *line.split("\t", 4)
    Person.create!(name: name, email: email, prefecture: prefecture, tel: tel)
  end
end
