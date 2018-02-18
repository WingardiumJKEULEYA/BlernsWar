class CreateJoinTableBattleNinja < ActiveRecord::Migration[5.1]
  def change
    create_join_table :battles, :ninjas do |t|
      # t.index [:battle_id, :ninja_id]
      # t.index [:ninja_id, :battle_id]
    end
  end
end
