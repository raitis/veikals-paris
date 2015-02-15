class Asset < ActiveRecord::Base
  attr_accessible :offer_id, :image
  belongs_to :offer

   has_attached_file :image,
  	:url  => "/system/:attachment/piedavajumi/:id/:filename",
  	:path => ":rails_root/public/system/:attachment/piedavajumi/:id/:filename",
  	:storage => :google_drive,
  	:google_drive_credentials => "#{Rails.root}/config/google_drive.yml",
  	:google_drive_options => {
  		:public_folder_id => '0BwzbE1V2LkjAQjBqRVpRMjhMUlE'
  	}
end
