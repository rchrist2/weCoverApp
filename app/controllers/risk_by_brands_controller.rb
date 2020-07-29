class RiskByBrandsController < ApplicationController
  before_action :set_risk_by_brand, only: [:show, :edit, :update, :destroy]

  # GET /risk_by_brands
  # GET /risk_by_brands.json
  def index
    @risk_by_brands = RiskByBrand.all
  end

  # GET /risk_by_brands/1
  # GET /risk_by_brands/1.json
  def show
  end

  # GET /risk_by_brands/new
  def new
    @risk_by_brand = RiskByBrand.new
  end

  # GET /risk_by_brands/1/edit
  def edit
  end

  # POST /risk_by_brands
  # POST /risk_by_brands.json
  def create
    @risk_by_brand = RiskByBrand.new(risk_by_brand_params)

    respond_to do |format|
      if @risk_by_brand.save
        format.html { redirect_to @risk_by_brand, notice: 'Risk by brand was successfully created.' }
        format.json { render :show, status: :created, location: @risk_by_brand }
      else
        format.html { render :new }
        format.json { render json: @risk_by_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /risk_by_brands/1
  # PATCH/PUT /risk_by_brands/1.json
  def update
    respond_to do |format|
      if @risk_by_brand.update(risk_by_brand_params)
        format.html { redirect_to @risk_by_brand, notice: 'Risk by brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @risk_by_brand }
      else
        format.html { render :edit }
        format.json { render json: @risk_by_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /risk_by_brands/1
  # DELETE /risk_by_brands/1.json
  def destroy
    @risk_by_brand.destroy
    respond_to do |format|
      format.html { redirect_to risk_by_brands_url, notice: 'Risk by brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_risk_by_brand
      @risk_by_brand = RiskByBrand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def risk_by_brand_params
      params.require(:risk_by_brand).permit(:brand, :screen_risk, :total_loss_risk, :battery_risk)
    end
end
