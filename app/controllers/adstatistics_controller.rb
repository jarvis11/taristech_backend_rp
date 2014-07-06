class AdstatisticsController < ApplicationController
  before_action :load_content
  before_action :set_adstatistic, only: [:show, :edit, :update, :destroy]

  # GET /adstatistics
  # GET /adstatistics.json
  def index
    @adstatistics = @content.adstatistics
  end

  # GET /adstatistics/1
  # GET /adstatistics/1.json
  def show
  end

  # GET /adstatistics/new
  def new
    @adstatistic = @content.adstatistics.build
  end

  # GET /adstatistics/1/edit
  def edit
  end

  # POST /adstatistics
  # POST /adstatistics.json
  def create
    @adstatistic = @content.adstatistics.build(adstatistic_params)
    respond_to do |format|
      if @adstatistic.save
        format.html { redirect_to [@content, @adstatistic], notice: 'Adstatistic was successfully created.' }
        format.json { render :show, status: :created, location: @adstatistic }
      else
        format.html { render :new }
        format.json { render json: @adstatistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adstatistics/1
  # PATCH/PUT /adstatistics/1.json
  def update
    respond_to do |format|
      if @adstatistic.update_attributes(adstatistic_params)
        format.html { redirect_to [@content, @adstatistic], notice: 'Adstatistic was successfully updated.' }
        format.json { render :show, status: :ok, location: @adstatistic }
      else
        format.html { render :edit }
        format.json { render json: @adstatistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adstatistics/1
  # DELETE /adstatistics/1.json
  def destroy
    @adstatistic.destroy
    respond_to do |format|
      format.html { redirect_to content_adstatistics_url(@content), notice: 'Adstatistic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adstatistic
      @adstatistic = @content.adstatistics.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adstatistic_params
      params.require(:adstatistic).permit(:type)
    end

    def load_content
      @content = Content.find(params[:content_id])
    end
end
