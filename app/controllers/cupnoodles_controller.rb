class CupnoodlesController < ApplicationController
  before_action :set_cupnoodle, only: [:show, :edit, :update, :destroy]

  # GET /cupnoodles
  # GET /cupnoodles.json
  def index
    @cupnoodles = Cupnoodle.all
  end

  # GET /cupnoodles/1
  # GET /cupnoodles/1.json
  def show
  end

  # GET /cupnoodles/new
  def new
    @cupnoodle = Cupnoodle.new
  end

  # GET /cupnoodles/1/edit
  def edit
  end

  # POST /cupnoodles
  # POST /cupnoodles.json
  def create
    @cupnoodle = Cupnoodle.new(cupnoodle_params)

    respond_to do |format|
      if @cupnoodle.save
        format.html { redirect_to @cupnoodle, notice: 'Cupnoodle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cupnoodle }
      else
        format.html { render action: 'new' }
        format.json { render json: @cupnoodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cupnoodles/1
  # PATCH/PUT /cupnoodles/1.json
  def update
    respond_to do |format|
      if @cupnoodle.update(cupnoodle_params)
        format.html { redirect_to @cupnoodle, notice: 'Cupnoodle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cupnoodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cupnoodles/1
  # DELETE /cupnoodles/1.json
  def destroy
    @cupnoodle.destroy
    respond_to do |format|
      format.html { redirect_to cupnoodles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cupnoodle
      @cupnoodle = Cupnoodle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cupnoodle_params
      params.require(:cupnoodle).permit(:name, :review, :user_id)
    end
end
