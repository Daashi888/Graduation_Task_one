require "application_system_test_case"

class PetsTest < ApplicationSystemTestCase
  setup do
    @pet = pets(:one)
  end

  test "visiting the index" do
    visit pets_url
    assert_selector "h1", text: "Pets"
  end

  test "creating a Pet" do
    visit pets_url
    click_on "New Pet"

    fill_in "Age", with: @pet.age
    check "Castrated" if @pet.castrated
    fill_in "Cat species", with: @pet.cat_species
    fill_in "Content", with: @pet.content
    fill_in "Current location", with: @pet.current_location
    fill_in "Dog breed", with: @pet.dog_breed
    fill_in "Image", with: @pet.image
    check "Negotiating" if @pet.negotiating
    fill_in "Prefecture", with: @pet.prefecture
    fill_in "Select animal", with: @pet.select_animal
    fill_in "Gender", with: @pet.gender
    fill_in "Title", with: @pet.title
    check "Vaccinated" if @pet.vaccinated
    click_on "Create Pet"

    assert_text "Pet was successfully created"
    click_on "Back"
  end

  test "updating a Pet" do
    visit pets_url
    click_on "Edit", match: :first

    fill_in "Age", with: @pet.age
    check "Castrated" if @pet.castrated
    fill_in "Cat species", with: @pet.cat_species
    fill_in "Content", with: @pet.content
    fill_in "Current location", with: @pet.current_location
    fill_in "Dog breed", with: @pet.dog_breed
    fill_in "Image", with: @pet.image
    check "Negotiating" if @pet.negotiating
    fill_in "Prefecture", with: @pet.prefecture
    fill_in "Select animal", with: @pet.select_animal
    fill_in "Gender", with: @pet.gender
    fill_in "Title", with: @pet.title
    check "Vaccinated" if @pet.vaccinated
    click_on "Update Pet"

    assert_text "Pet was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet" do
    visit pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet was successfully destroyed"
  end
end
