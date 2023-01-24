class LinhaCreditosController < ApplicationController
  before_action :set_linha_credito, only: %i[ show edit update destroy ]

  # GET /linha_creditos or /linha_creditos.json
  def index
    @linha_creditos = LinhaCredito.all
  end

  # GET /linha_creditos/1 or /linha_creditos/1.json
  def show
  end

  # GET /linha_creditos/new
  def new
    @linha_credito = LinhaCredito.new
  end

  # GET /linha_creditos/1/edit
  def edit
  end

  # POST /linha_creditos or /linha_creditos.json
  def create
    @linha_credito = LinhaCredito.new(linha_credito_params)

    respond_to do |format|
      if @linha_credito.save
        format.html { redirect_to linha_credito_url(@linha_credito), notice: "Linha credito was successfully created." }
        format.json { render :show, status: :created, location: @linha_credito }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @linha_credito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linha_creditos/1 or /linha_creditos/1.json
  def update
    respond_to do |format|
      if @linha_credito.update(linha_credito_params)
        format.html { redirect_to linha_credito_url(@linha_credito), notice: "Linha credito was successfully updated." }
        format.json { render :show, status: :ok, location: @linha_credito }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @linha_credito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linha_creditos/1 or /linha_creditos/1.json
  def destroy
    @linha_credito.destroy

    respond_to do |format|
      format.html { redirect_to linha_creditos_url, notice: "Linha credito was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linha_credito
      @linha_credito = LinhaCredito.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def linha_credito_params
      params.fetch(:linha_credito, {})
    end
end
