# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'json'

#@data = File.read("pages.json")
#@pt =  ActiveSupport::JSON.decode(@data)
#puts @pt['title'][0]


pagee = []

pages = [
    ['Page #1', 'Some text'],
    ['Page #2', 'Some text'],
    ['Page #3', 'Some text'],
    ['Page #4', 'Some text'],
    ['Page #5', 'Some text'],
    ['Page #6', 'Some text'],
    ['Page #7', 'Some text']
]

categories = ['Category #1', 'Category #2', 'Category #3']

categories.each do |c|
  Category.find_or_create_by_name c
end


#PP = Nokogiri::HTML(open("http://mos-saburovo.ru/"))
#pagee[0] = PP.css('.catItemTitle')
#pagee[1] = PP.css('.catItemIntroText')

#@page1 = Page.first.update_attributes(:body => body[0].to_html)

pages.each do |p|
  @p = Page.find_or_create_by_title(:title => p[0], :body => p[1])
  @p.categories << Category.first(:offset => rand(Category.count))
end

#puts 'body'
#puts body[1]

