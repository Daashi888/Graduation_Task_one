class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.text :image, null:false 
      t.text :content, null:false
      t.integer :select_animal, null:false
      t.string :age, null:false
      t.integer :gender, null:false
      t.string :current_location, null:false
      t.string :prefecture, null:false
      t.string :dog_breed
      t.string :cat_species
      t.boolean :castrated, null:false
      t.boolean :vaccinated, null:false

      t.timestamps
    end
  end
end
