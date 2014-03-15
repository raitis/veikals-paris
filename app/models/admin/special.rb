class Admin::Special < ActiveRecord::Base
  attr_accessible :content, :image, :is_published, :posted, :title, :video

  has_attached_file :image,
  	:url  => "/system/:attachment/akcijas/:id/:filename",
  	:path => ":rails_root/public/system/:attachment/akcijas/:id/:filename"
end
