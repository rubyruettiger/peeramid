class ProgressionsController < ApplicationController
  before_action :set_progression, only: [:show, :edit, :update, :destroy]
  before_filter :get_user



  # GET /progressions
  # GET /progressions.json
  def index
    @progressions = @user.progressions
  end

  # GET /progressions/1
  # GET /progressions/1.json
  def show
    @progression = @user.progressions.find(params[:id])
  end

  # GET /progressions/new
  def new
    @progression = Progression.new
  end

  # GET /progressions/1/edit
  def edit
  end

  # POST /progressions
  # POST /progressions.json
  def create
    @progression = @user.progressions.new(params[:progression])

    respond_to do |format|
      if @progression.save
        format.html { redirect_to [@user, @progression], notice: 'Progression was successfully created.' }
        format.json { render action: 'show', status: :created, location: [@user, @progression] }
      else
        format.html { render action: 'new' }
        format.json { render json: @progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progressions/1
  # PATCH/PUT /progressions/1.json
  def update
    respond_to do |format|
      if @progression.update(progression_params)
        format.html { redirect_to @progression, notice: 'Progression was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progressions/1
  # DELETE /progressions/1.json
  def destroy
    @progression.destroy
    respond_to do |format|
      format.html { redirect_to progressions_url }
      format.json { head :no_content }
    end
  end

  def get_user
    @user = User.find(params[:user_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progression
      @progression = Progression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def progression_params
      params.require(:progression).permit(:name, :progressable_id, :progressable_type, :is_completed, :is_approved)
    end
end
