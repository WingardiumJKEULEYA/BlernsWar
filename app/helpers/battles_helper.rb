# Helper : Battles
module BattlesHelper
  def display_ninjas(battle)
    ninja1 = battle.ninjas.first
    ninja2 = battle.ninjas.second
    winner = Ninja.find(battle.winner) == ninja1 ? ninja1 : ninja2
    loser = winner == ninja1 ? ninja2 : ninja1

    "<font color='lime'><b>#{winner.name}</b></font><br><font color='red'>#{loser.name}</font>".html_safe
  end
end
