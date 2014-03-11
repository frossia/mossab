query = File.read('posts2.sql')
Post.destroy_all
ActiveRecord::Base.connection.execute(query)
Post.all