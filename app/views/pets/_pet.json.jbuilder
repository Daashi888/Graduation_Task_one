json.extract! pet, :id, :image, :title, :content, :select_animal, :age, :sex, :negotiating, :current_location, :prefecture, :dog_breed, :cat_species, :castrated, :vaccinated, :created_at, :updated_at
json.url pet_url(pet, format: :json)
