class DetallesOfertaController < ApplicationController
  before_action :set_detalles_ofertum, only: [:show, :edit, :update, :destroy]

  # GET /detalles_oferta
  # GET /detalles_oferta.json
  def index
    @detalles_oferta = DetallesOfertum.all
  end

  # GET /detalles_oferta/1
  # GET /detalles_oferta/1.json
  def show
  end

  # GET /detalles_oferta/new
  def new
    @detalles_ofertum = DetallesOfertum.new
  end

  # GET /detalles_oferta/1/edit
  def edit
  end

  # POST /detalles_oferta
  # POST /detalles_oferta.json
  def create
    @detalles_ofertum = DetallesOfertum.new(detalles_ofertum_params)

    respond_to do |format|
      if @detalles_ofertum.save
        format.html { redirect_to @detalles_ofertum, notice: 'Detalles ofertum was successfully created.' }
        format.json { render :show, status: :created, location: @detalles_ofertum }
      else
        format.html { render :new }
        format.json { render json: @detalles_ofertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalles_oferta/1
  # PATCH/PUT /detalles_oferta/1.json
  def update
    respond_to do |format|
      if @detalles_ofertum.update(detalles_ofertum_params)
        format.html { redirect_to @detalles_ofertum, notice: 'Detalles ofertum was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalles_ofertum }
      else
        format.html { render :edit }
        format.json { render json: @detalles_ofertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalles_oferta/1
  # DELETE /detalles_oferta/1.json
  def destroy
    @detalles_ofertum.destroy
    respond_to do |format|
      format.html { redirect_to detalles_oferta_url, notice: 'Detalles ofertum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalles_ofertum
      @detalles_ofertum = DetallesOfertum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalles_ofertum_params
      params.require(:detalles_ofertum).permit(:titulo, :tipo, :anio, :ubicacion, :descripcion, :requisitos, :nivel_de_idioma, :otros_beneficios)
    end
end
