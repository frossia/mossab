module ActiveAdmin::ViewsHelper

  def public_size
    path = 'public/uploads'

    path << '/' unless path.end_with?('/')

    raise RuntimeError, "#{path} is not a directory" unless File.directory?(path)

    total_size = 0
    file_count = 0
    Dir["#{path}**/*"].each do |f|
      total_size += File.size(f) if File.file?(f) && File.size?(f)
      file_count = file_count + 1
    end
    total_size = total_size / 2**20

    return [total_size, file_count]

  end

end