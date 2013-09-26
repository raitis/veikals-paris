class Admin::Store < ActiveRecord::Base
  attr_accessible :address, :name, :phone
end
