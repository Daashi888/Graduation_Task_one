class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.text :image
      t.string :title
      t.text :content
      t.integer :select_animal
      t.string :age
      t.integer :sex
      t.boolean :negotiating
      t.string :current_location
      t.string :prefecture
      t.string :dog_breed
      t.string :cat_species
      t.boolean :castrated
      t.boolean :vaccinated

      t.timestamps
    end
  end
end
