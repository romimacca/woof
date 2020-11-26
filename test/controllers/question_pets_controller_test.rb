require 'test_helper'

class QuestionPetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_pet = question_pets(:one)
  end

  test "should get index" do
    get question_pets_url
    assert_response :success
  end

  test "should get new" do
    get new_question_pet_url
    assert_response :success
  end

  test "should create question_pet" do
    assert_difference('QuestionPet.count') do
      post question_pets_url, params: { question_pet: { pet_id: @question_pet.pet_id, text: @question_pet.text } }
    end

    assert_redirected_to question_pet_url(QuestionPet.last)
  end

  test "should show question_pet" do
    get question_pet_url(@question_pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_pet_url(@question_pet)
    assert_response :success
  end

  test "should update question_pet" do
    patch question_pet_url(@question_pet), params: { question_pet: { pet_id: @question_pet.pet_id, text: @question_pet.text } }
    assert_redirected_to question_pet_url(@question_pet)
  end

  test "should destroy question_pet" do
    assert_difference('QuestionPet.count', -1) do
      delete question_pet_url(@question_pet)
    end

    assert_redirected_to question_pets_url
  end
end
