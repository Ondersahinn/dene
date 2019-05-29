class BilgilersController < ApplicationController
  before_action :set_bilgiler, only: [:show, :edit, :update, :destroy]

  # GET /bilgilers
  # GET /bilgilers.json
  def index
    @bilgilers = Bilgiler.all
  end

  # GET /bilgilers/1
  # GET /bilgilers/1.json
  def show
  end

  # GET /bilgilers/new
  def new
    @bilgiler = Bilgiler.new
  end

  # GET /bilgilers/1/edit
  def edit
  end

  # POST /bilgilers
  # POST /bilgilers.json
  def create
    @bilgiler = Bilgiler.new(bilgiler_params)

    respond_to do |format|
      if @bilgiler.save
        format.html { redirect_to @bilgiler, notice: 'Bilgiler was successfully created.' }
        format.json { render :show, status: :created, location: @bilgiler }
      else
        format.html { render :new }
        format.json { render json: @bilgiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bilgilers/1
  # PATCH/PUT /bilgilers/1.json
  def update
    respond_to do |format|
      if @bilgiler.update(bilgiler_params)
        format.html { redirect_to @bilgiler, notice: 'Bilgiler was successfully updated.' }
        format.json { render :show, status: :ok, location: @bilgiler }
      else
        format.html { render :edit }
        format.json { render json: @bilgiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bilgilers/1
  # DELETE /bilgilers/1.json
  def destroy
    @bilgiler.destroy
    respond_to do |format|
      format.html { redirect_to bilgilers_url, notice: 'Bilgiler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bilgiler
      @bilgiler = Bilgiler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bilgiler_params
      params.require(:bilgiler).permit(:aciklama,:resim)
    end
end
