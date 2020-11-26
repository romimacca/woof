require 'test_helper'

class PostulationPetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postulation_pet = postulation_pets(:one)
  end

  test "should get index" do
    get postulation_pets_url
    assert_response :success
  end

  test "should get new" do
    get new_postulation_pet_url
    assert_response :success
  end

  test "should create postulation_pet" do
    assert_difference('PostulationPet.count') do
      post postulation_pets_url, params: { postulation_pet: { pet_id: @postulation_pet.pet_id, state: @postulation_pet.state, user_id: @postulation_pet.user_id } }
    end

    assert_redirected_to postulation_pet_url(PostulationPet.last)
  end

  test "should show postulation_pet" do
    get postulation_pet_url(@postulation_pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_postulation_pet_url(@postulation_pet)
    assert_response :success
  end

  test "should update postulation_pet" do
    patch postulation_pet_url(@postulation_pet), params: { postulation_pet: { pet_id: @postulation_pet.pet_id, state: @postulation_pet.state, user_id: @postulation_pet.user_id } }
    assert_redirected_to postulation_pet_url(@postulation_pet)
  end

  test "should destroy postulation_pet" do
    assert_difference('PostulationPet.count', -1) do
      delete postulation_pet_url(@postulation_pet)
    end

    assert_redirected_to postulation_pets_url
  end
end
