class TableGames < ActiveRecord::Migration[5.0]
  def change
  	create_table :games
  	add_column :games, :title, :string
  end
end
