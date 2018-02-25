# Controller : Battles
class BattlesController < ApplicationController
  respond_to :html, :js
  def index
    @ninja = current_user.ninja
    @battles = Battle.all
    @ninjas = Ninja.where.not(id: current_user.ninja.id)
  end

  def fight
    @ninja = Ninja.find(params[:ninja_id])
    FightJob.perform_later(@ninja, current_user.ninja)
    redirect_to battles_path
  end
end
