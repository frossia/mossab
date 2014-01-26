query = File.read('pages.sql')
#puts query
Page.destroy_all
ActiveRecord::Base.connection.execute(query)
Page.all