@categories = Category.all
@categories.each do |c|
  c.pages.destroy_all
end
@pages = Page.all
@categories.each do |cat|
  rand(8).times do
    cat.pages << @pages.find_by_id(rand(@pages.count))
  end
end