class StaticResponsesController < ApplicationController
  # GET /static_responses
  # GET /static_responses.json
  def index
    @static_responses = StaticResponse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @static_responses }
    end
  end

  # GET /static_responses/1
  # GET /static_responses/1.json
  def show
    @static_response = StaticResponse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @static_response.body }
      format.xml  { render xml: @static_response.body }
    end
  end

  # GET /static_responses/new
  # GET /static_responses/new.json
  def new
    @static_response = StaticResponse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @static_response }
    end
  end

  # GET /static_responses/1/edit
  def edit
    @static_response = StaticResponse.find(params[:id])
  end

  # POST /static_responses
  # POST /static_responses.json
  def create
    @static_response = StaticResponse.new(params[:static_response])

    respond_to do |format|
      if @static_response.save
        format.html { redirect_to @static_response, notice: 'Static response was successfully created.' }
        format.json { render json: @static_response, status: :created, location: @static_response }
      else
        format.html { render action: "new" }
        format.json { render json: @static_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /static_responses/1
  # PUT /static_responses/1.json
  def update
    @static_response = StaticResponse.find(params[:id])

    respond_to do |format|
      if @static_response.update_attributes(params[:static_response])
        format.html { redirect_to @static_response, notice: 'Static response was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @static_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /static_responses/1
  # DELETE /static_responses/1.json
  def destroy
    @static_response = StaticResponse.find(params[:id])
    @static_response.destroy

    respond_to do |format|
      format.html { redirect_to static_responses_url }
      format.json { head :ok }
    end
  end
end
