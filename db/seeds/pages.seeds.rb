Page.all do |p|
  p.category.destroy
end

50.times do |p|
  @page = Page.first(:offset => rand(Page.count))
  @page.categories << Category.first(:offset => rand(Category.count))
  puts p
  puts @page
end

icons = ['fa fa-building-o', 'fa fa-calendar', 'fa fa-archive', 'fa fa-circle', 'fa fa-envelope', 'fa fa-exclamation-triangle', 'fa fa-info-circle', 'fa fa-road', 'fa fa-medkit']

categories = Category.all

(Category.count).times do |c|
  ico = icons[rand(icons.count)]
  categories[c].icon = ico
  categories[c].save
  puts c
  puts categories[c].icon
end