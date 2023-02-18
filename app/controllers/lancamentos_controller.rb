class LancamentosController < ApplicationController
  before_action :set_lancamento, only: %i[ show edit update destroy ]

  # GET /lancamentos or /lancamentos.json
  def index
    @lancamentos = Lancamento.all
  end

  # GET /lancamentos/1 or /lancamentos/1.json
  def show
  end

  # GET /lancamentos/new
  def new
    @lancamento = Lancamento.new
  end

  # GET /lancamentos/1/edit
  def edit
  end

  # POST /lancamentos or /lancamentos.json
  def create
    @lancamento = Lancamento.new(lancamento_params)

    respond_to do |format|
      if @lancamento.save
        flash[:success] = "Lançamento gravado com sucesso!"
        format.html { redirect_to lancamentos_path }
        format.json { render :show, status: :created, location: @lancamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lancamento.errors, status: :unprocessable_entity }
        flash[:error] = validation_errors @lancamento.errors
      end
    end
  end

  # PATCH/PUT /lancamentos/1 or /lancamentos/1.json
  def update
    respond_to do |format|
      if @lancamento.update(lancamento_params)
        flash[:success] = "Lançamento gravado com sucesso!"
        format.html { redirect_to lancamentos_path }
        format.json { render :show, status: :ok, location: @lancamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lancamento.errors, status: :unprocessable_entity }
        flash[:error] = validation_errors @lancamento.errors
      end
    end
  end

  # DELETE /lancamentos/1 or /lancamentos/1.json
  def destroy
    @lancamento.destroy

    respond_to do |format|
      format.html { redirect_to lancamentos_url, notice: "Lancamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lancamento
      @lancamento = Lancamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lancamento_params
      params.fetch(:lancamento, {}).permit(Lancamento.column_names - ["created_at", "updated_at"])
    end
end
