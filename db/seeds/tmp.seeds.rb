#@categories = Category.all
#@categories.each do |c|
#  c.pages.destroy_all
#end
#@pages = Page.all
#@categories.each do |cat|
#  rand(8).times do
#    cat.pages << @pages.find_by_id(rand(@pages.count))
#  end
#end

#post = Post.find(281)
##post = 'asf sa kashg aks kga ga <p>sa jsajgajs gjsaf</p>asf \r\n dsg sg sdgsdg '
##@posts.each do |post|
#  puts post.introtext
#  puts '-------------------------------'
#  puts post.introtext.gsub("<p>\r\n</p>",'wwwwwwwwww')
#  #connection = ActiveRecord::Base.connection
#  #ActiveRecord::Base.connection.execute("SQL query")
##post.save
#  #puts post.introtext
##end

#x = 'youtube.com'
#posts = Post.where("introtext like ?", "%#{x}%")
#posts.each do |post|
#  puts post.title
#  post.tags.clear
#  post.tags << Tag.find_by_name('Собрание')
#end
#
#require 'nokogiri'
#require 'open-uri'
#
#domain = 'http://mos-saburovo.ru'
#dir = '/Users/Admin/projects/mossab/magick/'
#
#for i in 173..409
#  images = []
#  doc = Nokogiri::HTML(open('http://mos-saburovo.ru/index.php/item/'+i.to_s), nil, 'UTF-8')
#  puts '####################### '+i.to_s+' #####################'
#  doc.css('span.sigProLinkWrapper a').each do |s|
#    images << s['href'].to_s
#    puts s['href'].to_s
#  end
#
#
#  unless images == []
#
#    unless File.directory?(dir+i.to_s)
#      FileUtils.mkdir_p(dir+i.to_s)
#    end
#    images.each do |image|
#      puts domain+image.to_s
#      system('wget -P '+dir+i.to_s+' '+domain+image.to_s)
#    end
#    #image = domain+images[0].to_s
#    #exec('cd ~Admin/projects/mossab/'+dir)
#
#    #images[0]
#    #images.each do |url|
#      #File.open(dir+"my_file.jpg", "wb") do |f|
#      #  f.write HTTParty.get("http://tinyurl.com/lvtxz6v").parsed_response
#      #end
#    #end
#
#  end
#end

#c = Category.all
#c.each do |cat|
#  cat.update_attributes(:published => true)
#end

# file = File.read('tmp/programm.doc')
# puts file.bytesize
# puts directory_size('public')

  path = 'public'

  path << '/' unless path.end_with?('/')

  raise RuntimeError, "#{path} is not a directory" unless File.directory?(path)

  total_size = 0
  file_count = 0
  Dir["#{path}**/*"].each do |f|
    total_size += File.size(f) if File.file?(f) && File.size?(f)
    file_count = file_count + 1
  end
  p file_count
  p total_size
  p ' bytes'
  p total_size / 2**20
  p ' Mb'


