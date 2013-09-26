class Admin::StoresController < ApplicationController
  before_filter :authorize?
  
  layout 'admin'
  # GET /admin/stores
  # GET /admin/stores.json
  def index
    @admin_stores = Admin::Store.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_stores }
    end
  end

  # GET /admin/stores/1
  # GET /admin/stores/1.json
  def show
    @admin_store = Admin::Store.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_store }
    end
  end

  # GET /admin/stores/new
  # GET /admin/stores/new.json
  def new
    @admin_store = Admin::Store.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_store }
    end
  end

  # GET /admin/stores/1/edit
  def edit
    @admin_store = Admin::Store.find(params[:id])
  end

  # POST /admin/stores
  # POST /admin/stores.json
  def create
    @admin_store = Admin::Store.new(params[:admin_store])

    respond_to do |format|
      if @admin_store.save
        format.html { redirect_to @admin_store, notice: 'Store was successfully created.' }
        format.json { render json: @admin_store, status: :created, location: @admin_store }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/stores/1
  # PUT /admin/stores/1.json
  def update
    @admin_store = Admin::Store.find(params[:id])

    respond_to do |format|
      if @admin_store.update_attributes(params[:admin_store])
        format.html { redirect_to @admin_store, notice: 'Store was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/stores/1
  # DELETE /admin/stores/1.json
  def destroy
    @admin_store = Admin::Store.find(params[:id])
    @admin_store.destroy

    respond_to do |format|
      format.html { redirect_to admin_stores_url }
      format.json { head :no_content }
    end
  end
end
