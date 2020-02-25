class AddOnlineIdToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :online_id, :integer
  end
end
