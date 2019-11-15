class TactividadsController < ApplicationController
  before_action :set_tactividad, only: [:show, :edit, :update, :destroy]

  # GET /tactividads
  # GET /tactividads.json
  def index
    @tactividads = Tactividad.all
  end

  # GET /tactividads/1
  # GET /tactividads/1.json
  def show
  end

  # GET /tactividads/new
  def new
    @tactividad = Tactividad.new
  end

  # GET /tactividads/1/edit
  def edit
  end

  # POST /tactividads
  # POST /tactividads.json
  def create
    @tactividad = Tactividad.new(tactividad_params)

    respond_to do |format|
      if @tactividad.save
        format.html { redirect_to @tactividad, notice: 'Tactividad was successfully created.' }
        format.json { render :show, status: :created, location: @tactividad }
      else
        format.html { render :new }
        format.json { render json: @tactividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tactividads/1
  # PATCH/PUT /tactividads/1.json
  def update
    respond_to do |format|
      if @tactividad.update(tactividad_params)
        format.html { redirect_to @tactividad, notice: 'Tactividad was successfully updated.' }
        format.json { render :show, status: :ok, location: @tactividad }
      else
        format.html { render :edit }
        format.json { render json: @tactividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tactividads/1
  # DELETE /tactividads/1.json
  def destroy
    @tactividad.destroy
    respond_to do |format|
      format.html { redirect_to tactividads_url, notice: 'Tactividad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tactividad
      @tactividad = Tactividad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tactividad_params
      params.require(:tactividad).permit(:codigo, :descripcion)
    end
end
