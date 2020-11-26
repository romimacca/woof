require 'test_helper'

class AnswerPetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer_pet = answer_pets(:one)
  end

  test "should get index" do
    get answer_pets_url
    assert_response :success
  end

  test "should get new" do
    get new_answer_pet_url
    assert_response :success
  end

  test "should create answer_pet" do
    assert_difference('AnswerPet.count') do
      post answer_pets_url, params: { answer_pet: { postulation_pet_id: @answer_pet.postulation_pet_id, question_pet_id: @answer_pet.question_pet_id, text: @answer_pet.text } }
    end

    assert_redirected_to answer_pet_url(AnswerPet.last)
  end

  test "should show answer_pet" do
    get answer_pet_url(@answer_pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_answer_pet_url(@answer_pet)
    assert_response :success
  end

  test "should update answer_pet" do
    patch answer_pet_url(@answer_pet), params: { answer_pet: { postulation_pet_id: @answer_pet.postulation_pet_id, question_pet_id: @answer_pet.question_pet_id, text: @answer_pet.text } }
    assert_redirected_to answer_pet_url(@answer_pet)
  end

  test "should destroy answer_pet" do
    assert_difference('AnswerPet.count', -1) do
      delete answer_pet_url(@answer_pet)
    end

    assert_redirected_to answer_pets_url
  end
end
