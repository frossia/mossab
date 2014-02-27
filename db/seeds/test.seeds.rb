posts = Post.all
#posts.each do |post|
#  post.update_attributes(:created_at => '2014-02-25 09:28:43'.to_datetime, :updated_at => '2014-02-25 09:28:43'.to_datetime)
#end

posts.each do |p|
  p.update_attribute(:hot, false)
end
