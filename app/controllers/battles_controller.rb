# Controller : Battles
class BattlesController < ApplicationController
  respond_to :html, :js
  def index
    @ninja = current_user.ninja
    @battles = Battle.all
    @ninjas = Ninja.where.not(id: current_user.ninja.id)
  end
end
