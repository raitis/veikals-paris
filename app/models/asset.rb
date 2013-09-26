class Asset < ActiveRecord::Base
  attr_accessible :offer_id, :image
  belongs_to :offer

   has_attached_file :image,
  	:url  => "/system/:attachment/piedavajumi/:id/:filename",
  	:path => ":rails_root/public/system/:attachment/piedavajumi/:id/:filename"
end
