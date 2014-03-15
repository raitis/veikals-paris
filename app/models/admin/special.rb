class Admin::Special < ActiveRecord::Base
  attr_accessible :content, :image, :is_published, :posted, :title, :video
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)

  has_attached_file :image,
  	:url  => "/system/:attachment/akcijas/:id/:filename",
  	:path => ":rails_root/public/system/:attachment/akcijas/:id/:filename"
end
