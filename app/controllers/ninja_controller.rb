class NinjaController < ApplicationController
  before_action :set_ninja, only: [:show, :edit, :update]

  def show
    @ninja = current_user.ninja
  end

  def edit
  end

  def update
    respond_to do |format|
      if @ninja.update(ninja_params)
        format.html { redirect_to @ninja, notice: 'You ninja was successfully updated.' }
        # format.json { render :show, status: :ok, location: @ninja }
      else
        format.html { render :edit }
        # format.json { render json: @ninja.errors, status: :unprocessable_entity }
      end
    end
  end

  private
   
  # Use callbacks to share common setup or constraints between actions.
  def set_ninja
    @ninja = Ninja.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ninja_params
    params.require(:ninja).permit(:name)
  end
end
