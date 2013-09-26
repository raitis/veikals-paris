class Admin::Offer < ActiveRecord::Base
  attr_accessible :content, :store, :assets_attributes, :image, :phone, :assets
  

  before_save :set_phone

  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => true

  

  def set_phone
  	if store.present?
  		phone = Admin::Store.where(:address => self.store).pluck(:phone).first
  		self.phone = phone
  	else

  	end
  end

end
