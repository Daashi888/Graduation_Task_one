require "test_helper"

class PetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get pets_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_url
    assert_response :success
  end

  test "should create pet" do
    assert_difference('Pet.count') do
      post pets_url, params: { pet: { age: @pet.age, castrated: @pet.castrated, cat_species: @pet.cat_species, content: @pet.content, current_location: @pet.current_location, dog_breed: @pet.dog_breed, image: @pet.image, negotiating: @pet.negotiating, prefecture: @pet.prefecture, select_animal: @pet.select_animal, sex: @pet.sex, title: @pet.title, vaccinated: @pet.vaccinated } }
    end

    assert_redirected_to pet_url(Pet.last)
  end

  test "should show pet" do
    get pet_url(@pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_url(@pet)
    assert_response :success
  end

  test "should update pet" do
    patch pet_url(@pet), params: { pet: { age: @pet.age, castrated: @pet.castrated, cat_species: @pet.cat_species, content: @pet.content, current_location: @pet.current_location, dog_breed: @pet.dog_breed, image: @pet.image, negotiating: @pet.negotiating, prefecture: @pet.prefecture, select_animal: @pet.select_animal, sex: @pet.sex, title: @pet.title, vaccinated: @pet.vaccinated } }
    assert_redirected_to pet_url(@pet)
  end

  test "should destroy pet" do
    assert_difference('Pet.count', -1) do
      delete pet_url(@pet)
    end

    assert_redirected_to pets_url
  end
end
