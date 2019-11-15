class UembarquesController < ApplicationController
  before_action :set_uembarque, only: [:show, :edit, :update, :destroy]

  # GET /uembarques
  # GET /uembarques.json
  def index
    @uembarques = Uembarque.all
  end

  # GET /uembarques/1
  # GET /uembarques/1.json
  def show
  end

  # GET /uembarques/new
  def new
    @uembarque = Uembarque.new
  end

  # GET /uembarques/1/edit
  def edit
  end

  # POST /uembarques
  # POST /uembarques.json
  def create
    @uembarque = Uembarque.new(uembarque_params)

    respond_to do |format|
      if @uembarque.save
        format.html { redirect_to @uembarque, notice: 'Uembarque was successfully created.' }
        format.json { render :show, status: :created, location: @uembarque }
      else
        format.html { render :new }
        format.json { render json: @uembarque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uembarques/1
  # PATCH/PUT /uembarques/1.json
  def update
    respond_to do |format|
      if @uembarque.update(uembarque_params)
        format.html { redirect_to @uembarque, notice: 'Uembarque was successfully updated.' }
        format.json { render :show, status: :ok, location: @uembarque }
      else
        format.html { render :edit }
        format.json { render json: @uembarque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uembarques/1
  # DELETE /uembarques/1.json
  def destroy
    @uembarque.destroy
    respond_to do |format|
      format.html { redirect_to uembarques_url, notice: 'Uembarque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uembarque
      @uembarque = Uembarque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uembarque_params
      params.require(:uembarque).permit(:codigo, :descripcion)
    end
end
