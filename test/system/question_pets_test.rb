require "application_system_test_case"

class QuestionPetsTest < ApplicationSystemTestCase
  setup do
    @question_pet = question_pets(:one)
  end

  test "visiting the index" do
    visit question_pets_url
    assert_selector "h1", text: "Question Pets"
  end

  test "creating a Question pet" do
    visit question_pets_url
    click_on "New Question Pet"

    fill_in "Pet", with: @question_pet.pet_id
    fill_in "Text", with: @question_pet.text
    click_on "Create Question pet"

    assert_text "Question pet was successfully created"
    click_on "Back"
  end

  test "updating a Question pet" do
    visit question_pets_url
    click_on "Edit", match: :first

    fill_in "Pet", with: @question_pet.pet_id
    fill_in "Text", with: @question_pet.text
    click_on "Update Question pet"

    assert_text "Question pet was successfully updated"
    click_on "Back"
  end

  test "destroying a Question pet" do
    visit question_pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question pet was successfully destroyed"
  end
end
