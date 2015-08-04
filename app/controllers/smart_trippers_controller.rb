class SmartTrippersController < ApplicationController
  before_action :set_smart_tripper, only: [:show, :edit, :update, :destroy]
  layout "register_card"
  # GET /smart_trippers
  def index
    @smart_trippers = SmartTripper.all
  end

  # GET /smart_trippers/1
  def show
  end

  # GET /smart_trippers/new
  def new
    @smart_tripper = SmartTripper.new
  end

  # GET /smart_trippers/1/edit
  def edit
  end

  # POST /smart_trippers
  def create
    @smart_tripper = SmartTripper.new(smart_tripper_params)

    if @smart_tripper.save
      redirect_to @smart_tripper, notice: 'Smart tripper was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /smart_trippers/1
  def update
    if @smart_tripper.update(smart_tripper_params)
      redirect_to @smart_tripper, notice: 'Smart tripper was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /smart_trippers/1
  def destroy
    @smart_tripper.destroy
    redirect_to smart_trippers_url, notice: 'Smart tripper was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smart_tripper
      @smart_tripper = SmartTripper.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def smart_tripper_params
      params.require(:smart_tripper).permit(:metro_card_img, :last_four_phone_number)
    end
end
