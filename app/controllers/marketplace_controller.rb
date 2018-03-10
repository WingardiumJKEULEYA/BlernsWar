# Controller : Marketplace
class MarketplaceController < ApplicationController
  def index
    @ninja = current_user.ninja
    @items = Weapon.all
  end

  def buy
    if (weapon = Weapon.find(params[:id]))
      purchase = Weapon.buy(weapon, current_user.ninja)
      if purchase == 'success'
        redirect_to marketplace_index_path, notice: 'Weapon bought !'
      else
        redirect_to marketplace_index_path, alert: 'Weapon already exists in your inventory !'
      end
    else
      redirect_to marketplace_index_path, alert: 'Error !'
    end
  end
end
