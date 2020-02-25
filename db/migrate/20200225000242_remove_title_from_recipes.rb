class RemoveTitleFromRecipes < ActiveRecord::Migration[6.0]
  def change

    remove_column :recipes, :title, :string
  end
end
