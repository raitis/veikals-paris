class HomepageController < ApplicationController

	def index
		@special = Admin::Special.where(:is_published => true).last
	end
end
