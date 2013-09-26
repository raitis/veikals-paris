class OfferController < ApplicationController

	def index
		@offer = Admin::Offer.find(:all, :order => "created_at DESC")
	end

end
