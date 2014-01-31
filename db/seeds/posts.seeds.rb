query = File.read('posts.sql')
Post.destroy_all
ActiveRecord::Base.connection.execute(query)
Post.all