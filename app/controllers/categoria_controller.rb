class CategoriaController < ApplicationController
  before_action :set_categorium, only: %i[ show edit update destroy ]

  # GET /categoria or /categoria.json
  def index
    @categoria = Categorium.all.order(:tipo, :nome)
  end

  # GET /categoria/1 or /categoria/1.json
  def show
  end

  # GET /categoria/new
  def new
    @categorium = Categorium.new
  end

  # GET /categoria/1/edit
  def edit
  end

  # POST /categoria or /categoria.json
  def create
    @categorium = Categorium.new(categorium_params)

    respond_to do |format|
      if @categorium.save
        flash[:success] = "Categoria criada com sucesso!"
        format.html { redirect_to categoria_path}
        format.json { render :show, status: :created, location: @categorium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria/1 or /categoria/1.json
  def update
    respond_to do |format|
      if @categorium.update(categorium_params)
        flash[:success] = "Categoria atualizada com sucesso!"
        format.html { redirect_to categoria_path }
        format.json { render :show, status: :ok, location: @categorium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorium
      @categorium = Categorium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categorium_params
      params.fetch(:categorium, {}).permit(:id, :nome, :cor, :tipo)
    end
end
