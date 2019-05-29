class ProjelersController < ApplicationController
  before_action :set_projeler, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 
  # GET /projelers
  # GET /projelers.json
  def index
    if current_user
      @projelers = Projeler.all
      #redirect_to yazilars_path
    end
    
  end

  # GET /projelers/1
  # GET /projelers/1.json
  def show
  end

  # GET /projelers/new
  def new
    @projeler = Projeler.new
  end

  # GET /projelers/1/edit
  def edit
  end

  # POST /projelers
  # POST /projelers.json
  def create
    @projeler = Projeler.new(projeler_params)

    respond_to do |format|
      if @projeler.save
        format.html { redirect_to @projeler, notice: 'Projeler was successfully created.' }
        format.json { render :show, status: :created, location: @projeler }
      else
        format.html { render :new }
        format.json { render json: @projeler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projelers/1
  # PATCH/PUT /projelers/1.json
  def update
    respond_to do |format|
      if @projeler.update(projeler_params)
        format.html { redirect_to @projeler, notice: 'Projeler was successfully updated.' }
        format.json { render :show, status: :ok, location: @projeler }
      else
        format.html { render :edit }
        format.json { render json: @projeler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projelers/1
  # DELETE /projelers/1.json
  def destroy
    @projeler.destroy
    respond_to do |format|
      format.html { redirect_to projelers_url, notice: 'Projeler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projeler
      @projeler = Projeler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projeler_params
      params.require(:projeler).permit(:baslik,:resim, :konu, :aciklama, :tarih)
    end
end
