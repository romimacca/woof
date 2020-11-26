require "application_system_test_case"

class PostulationPetsTest < ApplicationSystemTestCase
  setup do
    @postulation_pet = postulation_pets(:one)
  end

  test "visiting the index" do
    visit postulation_pets_url
    assert_selector "h1", text: "Postulation Pets"
  end

  test "creating a Postulation pet" do
    visit postulation_pets_url
    click_on "New Postulation Pet"

    fill_in "Pet", with: @postulation_pet.pet_id
    fill_in "State", with: @postulation_pet.state
    fill_in "User", with: @postulation_pet.user_id
    click_on "Create Postulation pet"

    assert_text "Postulation pet was successfully created"
    click_on "Back"
  end

  test "updating a Postulation pet" do
    visit postulation_pets_url
    click_on "Edit", match: :first

    fill_in "Pet", with: @postulation_pet.pet_id
    fill_in "State", with: @postulation_pet.state
    fill_in "User", with: @postulation_pet.user_id
    click_on "Update Postulation pet"

    assert_text "Postulation pet was successfully updated"
    click_on "Back"
  end

  test "destroying a Postulation pet" do
    visit postulation_pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postulation pet was successfully destroyed"
  end
end
