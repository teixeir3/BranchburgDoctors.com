class ObservancesController < ApplicationController
  before_action :set_observance, only: [:show, :edit, :update, :destroy]

  # GET /observances
  # GET /observances.json
  def index
    @observances = Observance.all
  end

  # GET /observances/1
  # GET /observances/1.json
  def show
  end

  # GET /observances/new
  def new
    @observance = Observance.new
  end

  # GET /observances/1/edit
  def edit
  end

  # POST /observances
  # POST /observances.json
  def create
    @observance = Observance.new(observance_params)

    respond_to do |format|
      if @observance.save
        format.html { redirect_to @observance, notice: 'Observance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @observance }
      else
        format.html { render action: 'new' }
        format.json { render json: @observance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observances/1
  # PATCH/PUT /observances/1.json
  def update
    respond_to do |format|
      if @observance.update(observance_params)
        format.html { redirect_to @observance, notice: 'Observance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @observance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observances/1
  # DELETE /observances/1.json
  def destroy
    @observance.destroy
    respond_to do |format|
      format.html { redirect_to observances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observance
      @observance = Observance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def observance_params
      params.require(:observance).permit(:start_date, :name, :link, :description, :photo_id)
    end
end
