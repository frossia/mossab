# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pages = [
    ['Page #1', 'Some text'],
    ['Page #2', 'Some text'],
    ['Page #3', 'Some text'],
    ['Page #4', 'Some text'],
    ['Page #5', 'Some text'],
    ['Page #6', 'Some text'],
    ['Page #7', 'Some text']
]

pages.each do |p|
  Page.create([:title => p[0], :body => p[1]])
end

['Category #1', 'Category #2', 'Category #3'].each do |c|
  Category.find_or_create_by_name c
end