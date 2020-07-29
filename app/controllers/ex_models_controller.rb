class ExModelsController < ApplicationController
  before_action :set_ex_model, only: [:show, :edit, :update, :destroy]

  # GET /ex_models
  # GET /ex_models.json
  def index
    @ex_models = ExModel.all
  end

  # GET /ex_models/1
  # GET /ex_models/1.json
  def show
  end

  # GET /ex_models/new
  def new
    @ex_model = ExModel.new
  end

  # GET /ex_models/1/edit
  def edit
  end

  # POST /ex_models
  # POST /ex_models.json
  def create
    @ex_model = ExModel.new(ex_model_params)

    respond_to do |format|
      if @ex_model.save
        format.html { redirect_to @ex_model, notice: 'Ex model was successfully created.' }
        format.json { render :show, status: :created, location: @ex_model }
      else
        format.html { render :new }
        format.json { render json: @ex_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ex_models/1
  # PATCH/PUT /ex_models/1.json
  def update
    respond_to do |format|
      if @ex_model.update(ex_model_params)
        format.html { redirect_to @ex_model, notice: 'Ex model was successfully updated.' }
        format.json { render :show, status: :ok, location: @ex_model }
      else
        format.html { render :edit }
        format.json { render json: @ex_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ex_models/1
  # DELETE /ex_models/1.json
  def destroy
    @ex_model.destroy
    respond_to do |format|
      format.html { redirect_to ex_models_url, notice: 'Ex model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ex_model
      @ex_model = ExModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ex_model_params
      params.require(:ex_model).permit(:brand, :model, :price, :risk_by_brand_id)
    end
end
