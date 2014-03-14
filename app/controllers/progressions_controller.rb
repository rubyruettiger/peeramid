class ProgressionsController < ApplicationController
  before_filter :user
  before_action :set_progression, only: [:show, :edit, :update, :destroy]




  # GET /progressions
  # GET /progressions.json
  def index
    @progressions = @user.progressions
  end

  def new
    @progression = Progression.new
  end

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



  def destroy
    @progression.destroy
    respond_to do |format|
      format.html { redirect_to progressions_url }
      format.json { head :no_content }
    end
  end

  def user
    @user ||= User.find(params[:user_id])
  end

  def mark_completed
    @progression = Progression.find(params[:id])
    @progression.complete
    redirect_to request.referer, notice: "You've completed this lesson, we're telling your boss!"
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
