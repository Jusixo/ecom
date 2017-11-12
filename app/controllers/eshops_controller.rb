class EshopsController < ApplicationController
  before_action :set_eshop, only: [:show, :edit, :update, :destroy]

  # GET /eshops
  def index
    @eshops = Eshop.all
  end
  

  # GET /eshops/1
  def show
  end

  # GET /eshops/new
  def new
    @eshop = Eshop.new
  end

  # GET /eshops/1/edit
  def edit
  end

  # POST /eshops
  def create
    @eshop = Eshop.new(eshop_params)

    if @eshop.save
      redirect_to @eshop, notice: 'Eshop was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /eshops/1
  def update
    if @eshop.update(eshop_params)
      redirect_to @eshop, notice: 'Eshop was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /eshops/1
  def destroy
    @eshop.destroy
    redirect_to eshops_url, notice: 'Eshop was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eshop
      @eshop = Eshop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def eshop_params
      params.fetch(:eshop, {})
    end
end
