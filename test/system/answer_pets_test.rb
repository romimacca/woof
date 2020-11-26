require "application_system_test_case"

class AnswerPetsTest < ApplicationSystemTestCase
  setup do
    @answer_pet = answer_pets(:one)
  end

  test "visiting the index" do
    visit answer_pets_url
    assert_selector "h1", text: "Answer Pets"
  end

  test "creating a Answer pet" do
    visit answer_pets_url
    click_on "New Answer Pet"

    fill_in "Postulation pet", with: @answer_pet.postulation_pet_id
    fill_in "Question pet", with: @answer_pet.question_pet_id
    fill_in "Text", with: @answer_pet.text
    click_on "Create Answer pet"

    assert_text "Answer pet was successfully created"
    click_on "Back"
  end

  test "updating a Answer pet" do
    visit answer_pets_url
    click_on "Edit", match: :first

    fill_in "Postulation pet", with: @answer_pet.postulation_pet_id
    fill_in "Question pet", with: @answer_pet.question_pet_id
    fill_in "Text", with: @answer_pet.text
    click_on "Update Answer pet"

    assert_text "Answer pet was successfully updated"
    click_on "Back"
  end

  test "destroying a Answer pet" do
    visit answer_pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Answer pet was successfully destroyed"
  end
end
