class CreateNinjas < ActiveRecord::Migration[5.1]
  def change
    create_table :ninjas do |t|
      t.string :name, null: false, default: "Unknown Ninja"
      t.integer :hp, null: false, default: 100
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
