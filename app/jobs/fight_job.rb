class FightJob < ApplicationJob
  queue_as :default

  def perform(*ninjas)
    battle = Battle.new(winner: ninjas.first.id)
    ninjas.each do |ninja|
      battle.ninjas << ninja
    end
    battle.save!
  end
end
