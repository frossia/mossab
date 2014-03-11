require 'nokogiri'
require 'open-uri'

domain = 'http://mos-saburovo.ru'
dir = '/Users/Admin/projects/mossab/magick/'

for i in 173..409
  images = []
  doc = Nokogiri::HTML(open('http://mos-saburovo.ru/index.php/item/'+i.to_s), nil, 'UTF-8')
  puts '####################### '+i.to_s+' #####################'
  doc.css('span.sigProLinkWrapper a').each do |s|
    images << s['href'].to_s
    puts s['href'].to_s
  end


  unless images == []

    tmp = doc.css('h2.itemTitle')
    tmp.each_with_index do |t, j|
      if (j > 0)
        puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      end
      @name = t.content.to_s.gsub("\n", '').strip
    end
    puts @name
    @post = Post.find_by_title(@name)
    unless @post.blank?
      puts @post.id

      @post.post_images.destroy_all

      if @post.post_images.blank?
        puts 'ALL DESTROYED!!!'
      end

      Dir.foreach(dir+'/'+i.to_s) do |image|
        next if image == '.' or image == '..'
        post_image = PostImage.new
        post_image.image_url = File.open(dir+'/'+i.to_s+'/'+image)
        post_image.save
        @post.post_images << post_image
      end
        puts @post.post_images.all

    end

    #images.each do |image|
    #  puts domain+image.to_s
    #  system('wget -P '+dir+i.to_s+' '+domain+image.to_s)
    #end
  end
end