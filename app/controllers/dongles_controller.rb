class DonglesController < ApplicationController
  # GET /dongles
  # GET /dongles.json
  def index
    @dongles = Dongle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dongles }
    end
  end

  # GET /dongles/1
  # GET /dongles/1.json
  def show
    @dongle = Dongle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dongle }
    end
  end

  # GET /dongles/new
  # GET /dongles/new.json
  def new
    @dongle = Dongle.new
    @widgets = Widget.order(:name).all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dongle }
    end
  end

  # GET /dongles/1/edit
  def edit
    @widgets = Widget.order(:name).all
    @dongle = Dongle.find(params[:id])
  end

  # POST /dongles
  # POST /dongles.json
  def create
    @dongle = Dongle.new(params[:dongle])

    respond_to do |format|
      if @dongle.save
        format.html { redirect_to @dongle, notice: 'Dongle was successfully created.' }
        format.json { render json: @dongle, status: :created, location: @dongle }
      else
        format.html { render action: "new" }
        format.json { render json: @dongle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dongles/1
  # PUT /dongles/1.json
  def update
    @dongle = Dongle.find(params[:id])

    respond_to do |format|
      if @dongle.update_attributes(params[:dongle])
        format.html { redirect_to @dongle, notice: 'Dongle was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dongle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dongles/1
  # DELETE /dongles/1.json
  def destroy
    @dongle = Dongle.find(params[:id])
    @dongle.destroy

    respond_to do |format|
      format.html { redirect_to dongles_url }
      format.json { head :ok }
    end
  end
end
