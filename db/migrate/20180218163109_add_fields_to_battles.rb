class AddFieldsToBattles < ActiveRecord::Migration[5.1]
  def change
    add_column :battles, :winner, :integer
  end
end
