class BibliotecasController < ApplicationController
  before_action :set_biblioteca, only: [:show, :edit, :update, :destroy]

  # GET /bibliotecas
  # GET /bibliotecas.json
  def index
    @bibliotecas = Biblioteca.all
    if params[:ordenar]=='titulo'
      @bibliotecas = Biblioteca.all.order('titulo')
    elsif params[:ordenar]=='estado'
      @bibliotecas = Biblioteca.all.order('estado')
    end
end

  # GET /bibliotecas/1
  # GET /bibliotecas/1.json
  def show
  end

  # GET /bibliotecas/new
  def new
    @biblioteca = Biblioteca.new
  end

  # GET /bibliotecas/1/edit
  def edit
  end

  # POST /bibliotecas
  # POST /bibliotecas.json
  def create
    @biblioteca = Biblioteca.new(biblioteca_params)

    respond_to do |format|
      if @biblioteca.save
        format.html { redirect_to @biblioteca, notice: 'Biblioteca was successfully created.' }
        format.json { render :show, status: :created, location: @biblioteca }
      else
        format.html { render :new }
        format.json { render json: @biblioteca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bibliotecas/1
  # PATCH/PUT /bibliotecas/1.json
  def update
    respond_to do |format|
      if @biblioteca.update(biblioteca_params)
        format.html { redirect_to @biblioteca, notice: 'Biblioteca was successfully updated.' }
        format.json { render :show, status: :ok, location: @biblioteca }
      else
        format.html { render :edit }
        format.json { render json: @biblioteca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bibliotecas/1
  # DELETE /bibliotecas/1.json
  def destroy
    @biblioteca.destroy
    respond_to do |format|
      format.html { redirect_to bibliotecas_url, notice: 'Biblioteca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biblioteca
      @biblioteca = Biblioteca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def biblioteca_params
      params.require(:biblioteca).permit(:titulo, :autor, :estado, :fecha_prestado, :fecha_devolucion)
    end
end
