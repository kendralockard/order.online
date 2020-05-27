class AddRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes, id: :uuid do |t|
      t.string :name, null: false
    end
  end
end
