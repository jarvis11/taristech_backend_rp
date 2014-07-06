class MicrolocationsController < ApplicationController
  before_action :load_venue
  before_action :load_address
  before_action :set_microlocation, only: [:show, :edit, :update, :destroy]

  # GET /microlocations
  # GET /microlocations.json
  def index
    @microlocations = @address.microlocations
  end

  # GET /microlocations/1
  # GET /microlocations/1.json
  def show
  end

  # GET /microlocations/new
  def new
    @microlocation = @address.microlocations.build
  end

  # GET /microlocations/1/edit
  def edit
  end

  # POST /microlocations
  # POST /microlocations.json
  def create
    @microlocation = @address.microlocations.build(microlocation_params)

    respond_to do |format|
      if @microlocation.save
        format.html { redirect_to [@venue, @address, @microlocation], notice: 'Microlocation was successfully created.' }
        format.json { render :show, status: :created, location: @microlocation }
      else
        format.html { render :new }
        format.json { render json: @microlocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microlocations/1
  # PATCH/PUT /microlocations/1.json
  def update
    respond_to do |format|
      if @microlocation.update_attributes(microlocation_params)
        format.html { redirect_to [@venue, @address, @microlocation], notice: 'Microlocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @microlocation }
      else
        format.html { render :edit }
        format.json { render json: @microlocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microlocations/1
  # DELETE /microlocations/1.json
  def destroy
    @microlocation.destroy
    respond_to do |format|
      format.html { redirect_to venue_address_microlocations_url(@venue, @address), notice: 'Microlocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microlocation
      @microlocation = @address.microlocations.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microlocation_params
      params.require(:microlocation).permit(:uuid, :major_id, :minor_id, :name, :descriptor_tag, :action_tag, :price_tag)
    end

    def load_venue
      @venue = Venue.find(params[:venue_id])
    end

    def load_address
      # @address = Address.find(params[:address_id])
      @address = @venue.addresses.find(params[:address_id])
    end

end
