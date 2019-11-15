class EdetallesController < ApplicationController
  before_action :set_edetalle, only: [:show, :edit, :update, :destroy]

  # GET /edetalles
  # GET /edetalles.json
  def index
    @edetalles = Edetalle.all
  end

  # GET /edetalles/1
  # GET /edetalles/1.json
  def show
  end

  # GET /edetalles/new
  def new
    @edetalle = Edetalle.new
  end

  # GET /edetalles/1/edit
  def edit
  end

  # POST /edetalles
  # POST /edetalles.json
  def create
    @edetalle = Edetalle.new(edetalle_params)

    respond_to do |format|
      if @edetalle.save
        format.html { redirect_to @edetalle, notice: 'Edetalle was successfully created.' }
        format.json { render :show, status: :created, location: @edetalle }
      else
        format.html { render :new }
        format.json { render json: @edetalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edetalles/1
  # PATCH/PUT /edetalles/1.json
  def update
    respond_to do |format|
      if @edetalle.update(edetalle_params)
        format.html { redirect_to @edetalle, notice: 'Edetalle was successfully updated.' }
        format.json { render :show, status: :ok, location: @edetalle }
      else
        format.html { render :edit }
        format.json { render json: @edetalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edetalles/1
  # DELETE /edetalles/1.json
  def destroy
    @edetalle.destroy
    respond_to do |format|
      format.html { redirect_to edetalles_url, notice: 'Edetalle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edetalle
      @edetalle = Edetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edetalle_params
      params.require(:edetalle).permit(:numero, :fecha, :cliente, :linea, :nosec, :nobultos, :noparte, :upc, :shortdesc, :longdesc, :pesototal, :um, :marca, :modelo, :serie, :origen, :cantidad, :umc, :precio, :importe, :docto, :capturoentrada, :capturofactura, :reviso)
    end
end
