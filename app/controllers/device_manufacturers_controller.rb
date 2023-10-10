class DeviceManufacturersController < ApplicationController
  before_action :set_device_manufacturer, only: %i[ show edit update destroy ]

  # GET /device_manufacturers or /device_manufacturers.json
  def index
    @device_manufacturers = DeviceManufacturer.all
  end

  # GET /device_manufacturers/1 or /device_manufacturers/1.json
  def show
  end

  # GET /device_manufacturers/new
  def new
    @device_manufacturer = DeviceManufacturer.new
  end

  # GET /device_manufacturers/1/edit
  def edit
  end

  # POST /device_manufacturers or /device_manufacturers.json
  def create
    @device_manufacturer = DeviceManufacturer.new(device_manufacturer_params)

    respond_to do |format|
      if @device_manufacturer.save
        format.html { redirect_to device_manufacturer_url(@device_manufacturer), notice: "Device manufacturer was successfully created." }
        format.json { render :show, status: :created, location: @device_manufacturer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @device_manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_manufacturers/1 or /device_manufacturers/1.json
  def update
    respond_to do |format|
      if @device_manufacturer.update(device_manufacturer_params)
        format.html { redirect_to device_manufacturer_url(@device_manufacturer), notice: "Device manufacturer was successfully updated." }
        format.json { render :show, status: :ok, location: @device_manufacturer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @device_manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_manufacturers/1 or /device_manufacturers/1.json
  def destroy
    @device_manufacturer.destroy

    respond_to do |format|
      format.html { redirect_to device_manufacturers_url, notice: "Device manufacturer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_manufacturer
      @device_manufacturer = DeviceManufacturer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def device_manufacturer_params
      params.require(:device_manufacturer).permit(:name, :website)
    end
end
