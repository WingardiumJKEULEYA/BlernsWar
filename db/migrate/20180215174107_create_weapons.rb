class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name,     null: false
      t.integer :damage,  null: false
      t.integer :price,   null: false

      t.timestamps
    end
  end
end
