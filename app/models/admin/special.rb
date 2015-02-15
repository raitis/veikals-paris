class Admin::Special < ActiveRecord::Base
  attr_accessible :content, :image, :is_published, :posted, :title, :video

  has_attached_file :image,
  	:url  => "/system/:attachment/akcijas/:id/:filename",
  	:path => ":rails_root/public/system/:attachment/akcijas/:id/:filename",
  	:storage => :google_drive,
  	:google_drive_credentials => "#{Rails.root}/config/google_drive.yml",
  	:google_drive_options => {
  		:public_folder_id => '0BwzbE1V2LkjAQjBqRVpRMjhMUlE'
  	}
end
