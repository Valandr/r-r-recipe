class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :instruction
      t.string :image, default: '{require(`${IMG_PATH}recettes.jpg`)}'
      
      t.timestamps
    end
  end
end
