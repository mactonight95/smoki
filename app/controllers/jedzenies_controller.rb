class JedzeniesController < ApplicationController
  before_action :set_jedzeny, only: [:show, :edit, :update, :destroy]

  # GET /jedzenies
  # GET /jedzenies.json
  def index
    @jedzenies = Jedzenie.all
  end

  # GET /jedzenies/1
  # GET /jedzenies/1.json
  def show
  end

  # GET /jedzenies/new
  def new
    @jedzeny = Jedzenie.new
  end

  # GET /jedzenies/1/edit
  def edit
  end

  # POST /jedzenies
  # POST /jedzenies.json
  def create
    @jedzeny = Jedzenie.new(jedzeny_params)

    respond_to do |format|
      if @jedzeny.save
        format.html { redirect_to @jedzeny, notice: 'Jedzenie was successfully created.' }
        format.json { render :show, status: :created, location: @jedzeny }
      else
        format.html { render :new }
        format.json { render json: @jedzeny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jedzenies/1
  # PATCH/PUT /jedzenies/1.json
  def update
    respond_to do |format|
      if @jedzeny.update(jedzeny_params)
        format.html { redirect_to @jedzeny, notice: 'Jedzenie was successfully updated.' }
        format.json { render :show, status: :ok, location: @jedzeny }
      else
        format.html { render :edit }
        format.json { render json: @jedzeny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jedzenies/1
  # DELETE /jedzenies/1.json
  def destroy
    @jedzeny.destroy
    respond_to do |format|
      format.html { redirect_to jedzenies_url, notice: 'Jedzenie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jedzeny
      @jedzeny = Jedzenie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jedzeny_params
      params.require(:jedzeny).permit(:regen_hp, :regen_mp, :bonus_exp, :user_id)
    end
end
