namespace :copydb do
  # run "scp admin@frossiacsb.no-ip.biz:/Users/Admin/projects/mossab/db/development.sqlite3 #{deploy_to}/current/db/production.sqlite3"

  hosting_dir = 'hosting_mossaburovo@phosphorus.locum.ru:/home/hosting_mossaburovo/projects/mossab/current/db/'
  hosting     = 'hosting_mossaburovo@phosphorus.locum.ru:/home/hosting_mossaburovo/projects/mossab/current/db/production.sqlite3'
  mac_dir     = '/Users/Admin/projects/mossab/db/'
  mac         = '/Users/Admin/projects/mossab/db/development.sqlite3'

  task :tomac do
    puts 'Hosting -> Mac'
    system("cp #{mac} #{mac_dir}tmpDev.sqlite3")
    system("scp #{hosting} #{mac}")
  end

  task :frommac do
    puts 'Mac -> Hosting'
    # system("scp #{hosting} #{hosting_dir}tmpDev.sqlite3")
    system("cap deploy:stop")
    system("scp #{mac} #{hosting}")
    system("cap deploy:start")
  end

end