Factory.define(:video, :class => 'Video') do |video|
  video.sequence(:url) { |n| "http://youtube.com/video#{n}" }
  video.sequence(:name) { |n| "Battle Video #{n}" }
  video.user { |r| r.association(:user) }
  video.desc { lorem(50) }
end