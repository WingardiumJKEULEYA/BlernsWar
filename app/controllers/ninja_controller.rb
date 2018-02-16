class NinjaController < ApplicationController
  before_action :set_ninja, only: [:show, :edit, :update]

  def show
    @ninja = current_user.ninja
  end

  def edit
  end

  def update

  end

  private
   
  # Use callbacks to share common setup or constraints between actions.
  def set_ninja
    @ninja = Ninja.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ninja_params
    # params.require(:ninja).permit(:name)
    params.fetch(:ninja, {})
  end
end
