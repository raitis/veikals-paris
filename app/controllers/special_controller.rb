class SpecialController < ApplicationController

	def index
		##@special = Admin::Special.where(:is_published => true).last
		##@other = Admin::Special.find(:all, :conditions => {:is_published => false}, :order => "created_at DESC")
	end
end
