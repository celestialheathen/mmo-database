class AddYToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :y, :int
  end
end
