class DeviceCategoriesController < ApplicationController
  before_action :set_device_category, only: %i[ show edit update destroy ]

  # GET /device_categories or /device_categories.json
  def index
    @device_categories = DeviceCategory.all
  end

  # GET /device_categories/1 or /device_categories/1.json
  def show
  end

  # GET /device_categories/new
  def new
    @device_category = DeviceCategory.new
  end

  # GET /device_categories/1/edit
  def edit
  end

  # POST /device_categories or /device_categories.json
  def create
    @device_category = DeviceCategory.new(device_category_params)

    respond_to do |format|
      if @device_category.save
        format.html { redirect_to device_category_url(@device_category), notice: "Device category was successfully created." }
        format.json { render :show, status: :created, location: @device_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @device_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_categories/1 or /device_categories/1.json
  def update
    respond_to do |format|
      if @device_category.update(device_category_params)
        format.html { redirect_to device_category_url(@device_category), notice: "Device category was successfully updated." }
        format.json { render :show, status: :ok, location: @device_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @device_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_categories/1 or /device_categories/1.json
  def destroy
    @device_category.destroy

    respond_to do |format|
      format.html { redirect_to device_categories_url, notice: "Device category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_category
      @device_category = DeviceCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def device_category_params
      params.require(:device_category).permit(:name)
    end
end
