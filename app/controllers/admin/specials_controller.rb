class Admin::SpecialsController < ApplicationController
  before_filter :authorize?
  
  layout 'admin'
  # GET /admin/specials
  # GET /admin/specials.json
  def index
    @admin_specials = Admin::Special.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_specials }
    end
  end

  # GET /admin/specials/1
  # GET /admin/specials/1.json
  def show
    @admin_special = Admin::Special.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_special }
    end
  end

  # GET /admin/specials/new
  # GET /admin/specials/new.json
  def new
    @admin_special = Admin::Special.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_special }
    end
  end

  # GET /admin/specials/1/edit
  def edit
    @admin_special = Admin::Special.find(params[:id])
  end

  # POST /admin/specials
  # POST /admin/specials.json
  def create
    @admin_special = Admin::Special.new(params[:admin_special])

    respond_to do |format|
      if @admin_special.save
        format.html { redirect_to admin_specials_path, notice: 'Special was successfully created.' }
        format.json { render json: admin_specials_path, status: :created, location: @admin_special }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_special.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/specials/1
  # PUT /admin/specials/1.json
  def update
    @admin_special = Admin::Special.find(params[:id])

    respond_to do |format|
      if @admin_special.update_attributes(params[:admin_special])
        format.html { redirect_to admin_specials_path, notice: 'Special was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_special.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/specials/1
  # DELETE /admin/specials/1.json
  def destroy
    @admin_special = Admin::Special.find(params[:id])
    @admin_special.destroy

    respond_to do |format|
      format.html { redirect_to admin_specials_url }
      format.json { head :no_content }
    end
  end
end
