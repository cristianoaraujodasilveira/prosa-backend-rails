class PropostaController < ApplicationController
  before_action :set_proposta, only: [:show, :update, :destroy]

  # GET /proposta
  def index
    @proposta = Proposta.all.page(params[:offset]).per(params[:limit])    
    render json: @proposta
  end

  # GET /proposta/1
  def show
    render json: @proposta
  end

  # POST /proposta
  def create
    @proposta = Proposta.new(proposta_params)
    if @proposta.save
      render json: @proposta, status: :created, location: @proposta
    else
      render json: @proposta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /proposta/1
  def update    
    if @proposta.update(proposta_params)
      render json: @proposta
    else
      render json: @proposta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /proposta/1
  def destroy
    @proposta.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposta
      @proposta = Proposta.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def proposta_params      
      params.permit(:id,:nome,:descricao,:valor,:cidade_id,:inicio,:fim)
    end
end
