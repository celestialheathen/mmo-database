class AddXToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :x, :int
  end
end
