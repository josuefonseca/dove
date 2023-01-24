class CarteirasController < ApplicationController
  before_action :set_carteira, only: %i[ show edit update destroy ]

  # GET /carteiras or /carteiras.json
  def index
    @carteiras = Carteira.all
  end

  # GET /carteiras/1 or /carteiras/1.json
  def show
  end

  # GET /carteiras/new
  def new
    @carteira = Carteira.new
  end

  # GET /carteiras/1/edit
  def edit
  end

  # POST /carteiras or /carteiras.json
  def create
    @carteira = Carteira.new(carteira_params)

    respond_to do |format|
      if @carteira.save
        format.html { redirect_to carteira_url(@carteira), notice: "Carteira was successfully created." }
        format.json { render :show, status: :created, location: @carteira }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carteira.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carteiras/1 or /carteiras/1.json
  def update
    respond_to do |format|
      if @carteira.update(carteira_params)
        format.html { redirect_to carteira_url(@carteira), notice: "Carteira was successfully updated." }
        format.json { render :show, status: :ok, location: @carteira }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carteira.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carteiras/1 or /carteiras/1.json
  def destroy
    @carteira.destroy

    respond_to do |format|
      format.html { redirect_to carteiras_url, notice: "Carteira was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carteira
      @carteira = Carteira.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carteira_params
      params.fetch(:carteira, {})
    end
end
