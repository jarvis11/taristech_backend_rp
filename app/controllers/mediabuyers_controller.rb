class MediabuyersController < ApplicationController
  before_action :load_advertiser
  before_action :set_mediabuyer, only: [:show, :edit, :update, :destroy]

  # GET /mediabuyers
  # GET /mediabuyers.json
  def index
    #@mediabuyers = Mediabuyer.all
    @mediabuyers = @advertiser.mediabuyers
  end

  # GET /mediabuyers/1
  # GET /mediabuyers/1.json
  def show
  end

  # GET /mediabuyers/new
  def new
    #@mediabuyer = Mediabuyer.new
    @mediabuyer = @advertiser.mediabuyers.build
  end

  # GET /mediabuyers/1/edit
  def edit
  end

  # POST /mediabuyers
  # POST /mediabuyers.json
  def create
    # @mediabuyer = Mediabuyer.new(mediabuyer_params)
    @mediabuyer = @advertiser.mediabuyers.build(mediabuyer_params)

    respond_to do |format|
      if @mediabuyer.save
        format.html { redirect_to [@advertiser, @mediabuyer], notice: 'Mediabuyer was successfully created.' }
        format.json { render :show, status: :created, location: @mediabuyer }
      else
        format.html { render :new }
        format.json { render json: @mediabuyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mediabuyers/1
  # PATCH/PUT /mediabuyers/1.json
  def update
    respond_to do |format|
      if @mediabuyer.update_attributes(mediabuyer_params)
        format.html { redirect_to [@advertiser, @mediabuyer], notice: 'Mediabuyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @mediabuyer }
      else
        format.html { render :edit }
        format.json { render json: @mediabuyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mediabuyers/1
  # DELETE /mediabuyers/1.json
  def destroy
    @mediabuyer.destroy
    respond_to do |format|
      format.html { redirect_to advertiser_mediabuyers_url, notice: 'Mediabuyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mediabuyer
      #@mediabuyer = Mediabuyer.find(params[:id])
      @mediabuyer = @advertiser.mediabuyers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mediabuyer_params
      params.require(:mediabuyer).permit(:first_name, :last_name, :password, :phone, :permission)
    end

    def load_advertiser
      @advertiser = Advertiser.find(params[:advertiser_id])
    end
    
end
