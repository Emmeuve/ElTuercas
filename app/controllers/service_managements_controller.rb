class ServiceManagementsController < ApplicationController
  before_action :set_service_management, only: %i[ show edit update destroy ]

  # GET /service_managements or /service_managements.json
  def index
    @service_managements = ServiceManagement.all
  end

  # GET /service_managements/1 or /service_managements/1.json
  def show
  end

  # GET /service_managements/new
  def new
    @service_management = ServiceManagement.new
  end

  # GET /service_managements/1/edit
  def edit
  end

  # POST /service_managements or /service_managements.json
  def create
    @service_management = ServiceManagement.new(service_management_params)

    respond_to do |format|
      if @service_management.save
        format.html { redirect_to service_management_url(@service_management), notice: "Service management was successfully created." }
        format.json { render :show, status: :created, location: @service_management }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_managements/1 or /service_managements/1.json
  def update
    respond_to do |format|
      if @service_management.update(service_management_params)
        format.html { redirect_to service_management_url(@service_management), notice: "Service management was successfully updated." }
        format.json { render :show, status: :ok, location: @service_management }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_managements/1 or /service_managements/1.json
  def destroy
    @service_management.destroy

    respond_to do |format|
      format.html { redirect_to service_managements_url, notice: "Service management was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_management
      @service_management = ServiceManagement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_management_params
      params.require(:service_management).permit(:client_id, :contact_id, :vehiculo_id, :repair_id, :service_id)
    end
end
