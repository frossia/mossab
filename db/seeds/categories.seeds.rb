#encoding: utf-8
require 'json'

icons = ['fa fa-building-o', 'fa fa-calendar', 'fa fa-archive', 'fa fa-circle', 'fa fa-envelope', 'fa fa-exclamation-triangle', 'fa fa-info-circle', 'fa fa-road', 'fa fa-medkit']

json = File.read('categories.json')
categories = JSON.parse json

if Category.count != 0
  puts 'Categories is not empty! DELETING...'
  Category.destroy_all
  puts 'DELETED!'
end

puts 'Start adding categories...'

#puts json
#puts categories
categories["data"].each do |cat|
  puts cat["name"]

  ico = icons[rand(icons.count)]
  @c = Category.new(:name => cat["name"], :icon => ico)
  @c.save
end

puts 'Added ' + Category.count.to_s + ' categories'
puts Category.first.name
puts Category.first.icon


