class SmoksController < ApplicationController
  before_action :set_smok, only: [:show, :edit, :update, :destroy]

  # GET /smoks
  # GET /smoks.json
  def index
    @smoks = Smok.all
  end

  # GET /smoks/1
  # GET /smoks/1.json
  def show
  end

  # GET /smoks/new
  def new
    @smok = Smok.new
  end

  # GET /smoks/1/edit
  def edit
  end

  # POST /smoks
  # POST /smoks.json
  def create
    @smok = Smok.new(smok_params)

    respond_to do |format|
      if @smok.save
        format.html { redirect_to @smok, notice: 'Smok was successfully created.' }
        format.json { render :show, status: :created, location: @smok }
      else
        format.html { render :new }
        format.json { render json: @smok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smoks/1
  # PATCH/PUT /smoks/1.json
  def update
    respond_to do |format|
      if @smok.update(smok_params)
        format.html { redirect_to @smok, notice: 'Smok was successfully updated.' }
        format.json { render :show, status: :ok, location: @smok }
      else
        format.html { render :edit }
        format.json { render json: @smok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smoks/1
  # DELETE /smoks/1.json
  def destroy
    @smok.destroy
    respond_to do |format|
      format.html { redirect_to smoks_url, notice: 'Smok was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smok
      @smok = Smok.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smok_params
      params.require(:smok).permit(:hp, :mp, :atk, :lvl, :exp, :user_id)
    end
end
