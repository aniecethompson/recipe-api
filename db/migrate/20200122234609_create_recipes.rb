class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.belongs_to :cookbook, null: false, foreign_key: true
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
