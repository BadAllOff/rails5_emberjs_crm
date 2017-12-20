class ContacsController < ApplicationController
  before_action :set_contac, only: [:show, :update, :destroy]

  # GET /contacs
  def index
    @contacs = Contac.all

    render json: @contacs
  end

  # GET /contacs/1
  def show
    render json: @contac
  end

  # POST /contacs
  def create
    @contac = Contac.new(contac_params)

    if @contac.save
      render json: @contac, status: :created, location: @contac
    else
      render json: @contac.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacs/1
  def update
    if @contac.update(contac_params)
      render json: @contac
    else
      render json: @contac.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contacs/1
  def destroy
    @contac.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contac
      @contac = Contac.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contac_params
      params.require(:contac).permit(:family_name, :given_name, :company, :title, :phone, :email, :website, :address, :customer_id, :additional_info)
    end
end
