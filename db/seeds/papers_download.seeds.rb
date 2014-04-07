ENCODING =  'WINDOWS-1251' # 'UTF-8'
require 'nokogiri'
require 'open-uri'

dir = '/Users/Admin/projects/mossab/tmp/papers'


papers = []
i = 0
doc = Nokogiri::HTML(open('http://www.press-izdat.ru/pressnew/index.php?area=1&p=static&page=nms'), nil, 'UTF-8')
doc.css('a [href]').each do |a|
  # images << s['href'].to_s
  if a['href'].include? 'http://www.press-izdat.ru/press/uploads/files'
    paper = a['href'].to_s
    p paper
    papers << paper
    i = i + 1
    p i
    exec = 'wget ' + dir + ' ' + paper
    # p 'EXEC: ' + exec
    # system(exec)
  end
end

p papers.count

