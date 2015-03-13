class HabersController < ApplicationController
  before_action :set_haber, only: [:show, :edit, :update, :destroy]

  # GET /habers
  # GET /habers.json
  def index
    @habers = Haber.all
  end

  # GET /habers/1
  # GET /habers/1.json
  def show
  end

  # GET /habers/new
  def new
    @haber = Haber.new
  end

  # GET /habers/1/edit
  def edit
  end

  # POST /habers
  # POST /habers.json
  def create
    @haber = Haber.new(haber_params)

    respond_to do |format|
      if @haber.save
        format.html { redirect_to @haber, notice: 'Haber was successfully created.' }
        format.json { render :show, status: :created, location: @haber }
      else
        format.html { render :new }
        format.json { render json: @haber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habers/1
  # PATCH/PUT /habers/1.json
  def update
    respond_to do |format|
      if @haber.update(haber_params)
        format.html { redirect_to @haber, notice: 'Haber was successfully updated.' }
        format.json { render :show, status: :ok, location: @haber }
      else
        format.html { render :edit }
        format.json { render json: @haber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habers/1
  # DELETE /habers/1.json
  def destroy
    @haber.destroy
    respond_to do |format|
      format.html { redirect_to habers_url, notice: 'Haber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haber
      @haber = Haber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haber_params
      params.require(:haber).permit(:baslik, :aciklamasi, :resim, :kaynagi)
    end
end
