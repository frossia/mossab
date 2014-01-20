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


pages = [
    ['Page #1', 'Some text'],
    ['Page #2', 'Some text'],
    ['Page #3', 'Some text'],
    ['Page #4', 'Some text'],
    ['Page #5', 'Some text'],
    ['Page #6', 'Some text'],
    ['Page #7', 'Some text']
]

categories = ['Муниципальное образование', 'Совет депутатов', 'Администрация муниципального округа', 'Полномочия в сфере ЖКХ', 'Молодежная общественная палата', 'Военно-патриотическое воспитание', 'Призыв на военную службу', 'Выборы', 'Газета «Москворечье-Сабурово: вчера, сегодня, завтра»', 'ВАЖНАЯ ИНФОРМАЦИЯ']

categories.each do |c|
  Category.find_or_create_by_name c
end


#PP = Nokogiri::HTML(open("http://mos-saburovo.ru/"))
#pagee[0] = PP.css('.catItemTitle')
#pagee[1] = PP.css('.catItemIntroText')

#@page1 = Page.first.update_attributes(:body => body[0].to_html)

pages.each do |p|
  @p = Page.find_or_create_by_title(:title => p[0], :body => p[1])
end



#puts 'body'
#puts body[1]

