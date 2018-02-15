class CreateJoinTableNinjaWeapon < ActiveRecord::Migration[5.1]
  def change
    create_join_table :ninjas, :weapons do |t|
      # t.index [:ninja_id, :weapon_id]
      # t.index [:weapon_id, :ninja_id]
    end
  end
end
