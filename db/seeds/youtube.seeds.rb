# encoding: utf-8

require 'youtube_it'
client = YouTubeIt::Client.new(:dev_key => "AI39si7lNmKdT7qsELclik0eJdJHtgXLKGRmA2N6x0n_nMkwPkX8hcWxjvqzUW35i3q9kBCv7efywme3SsetRDmL-y-IF6L5yg")

client = client.videos_by(:user => '5u5zCbVB6s8yF-_2PmpOYw')

client.videos.each do |video|
  puts video.title
  #p video.thumbnails
  p video.video_id
end
