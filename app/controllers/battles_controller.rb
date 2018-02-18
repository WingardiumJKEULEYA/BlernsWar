# Controller : Battles
class BattlesController < ApplicationController
  respond_to :html, :js
  def index
    @ninja = current_user.ninja
    @battles = Battle.all
  end
end
