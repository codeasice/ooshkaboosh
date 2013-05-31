class OoshesController < ApplicationController
  # GET /ooshes
  # GET /ooshes.json
  def index
    @ooshes = Oosh.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ooshes }
    end
  end

  # GET /ooshes/1
  # GET /ooshes/1.json
  def show
    @oosh = Oosh.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oosh }
    end
  end

  # GET /ooshes/new
  # GET /ooshes/new.json
  def new
    @oosh = Oosh.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @oosh }
    end
  end

  # GET /ooshes/1/edit
  def edit
    @oosh = Oosh.find(params[:id])
  end

  # POST /ooshes
  # POST /ooshes.json
  def create
    @oosh = Oosh.new(params[:oosh])

    respond_to do |format|
      if @oosh.save
        format.html { redirect_to @oosh, notice: 'Oosh was successfully created.' }
        format.json { render json: @oosh, status: :created, location: @oosh }
      else
        format.html { render action: "new" }
        format.json { render json: @oosh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ooshes/1
  # PUT /ooshes/1.json
  def update
    @oosh = Oosh.find(params[:id])

    respond_to do |format|
      if @oosh.update_attributes(params[:oosh])
        format.html { redirect_to @oosh, notice: 'Oosh was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @oosh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ooshes/1
  # DELETE /ooshes/1.json
  def destroy
    @oosh = Oosh.find(params[:id])
    @oosh.destroy

    respond_to do |format|
      format.html { redirect_to ooshes_url }
      format.json { head :no_content }
    end
  end
end
