class Admin::OffersController < ApplicationController
 before_filter :authorize?
  
  layout 'admin'
  # GET /admin/offers
  # GET /admin/offers.json
  def index
    @admin_offers = Admin::Offer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_offers }
    end
  end

  # GET /admin/offers/1
  # GET /admin/offers/1.json
  def show
    @admin_offer = Admin::Offer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_offer }
    end
  end

  # GET /admin/offers/new
  # GET /admin/offers/new.json
  def new
    @admin_offer = Admin::Offer.new
    5.times {@admin_offer.assets.build}

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_offer }
    end
  end

  # GET /admin/offers/1/edit
  def edit
    @admin_offer = Admin::Offer.find(params[:id])
    5.times {@admin_offer.assets.build}
  end

  # POST /admin/offers
  # POST /admin/offers.json
  def create
    @admin_offer = Admin::Offer.new(params[:admin_offer])

    respond_to do |format|
      if @admin_offer.save
        format.html { redirect_to @admin_offer, notice: 'Offer was successfully created.' }
        format.json { render json: @admin_offer, status: :created, location: @admin_offer }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/offers/1
  # PUT /admin/offers/1.json
  def update
    @admin_offer = Admin::Offer.find(params[:id])

    respond_to do |format|
      if @admin_offer.update_attributes(params[:admin_offer])
        format.html { redirect_to @admin_offer, notice: 'Offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/offers/1
  # DELETE /admin/offers/1.json
  def destroy
    @admin_offer = Admin::Offer.find(params[:id])
    @admin_offer.destroy

    respond_to do |format|
      format.html { redirect_to admin_offers_url }
      format.json { head :no_content }
    end
  end
end
