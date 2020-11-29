class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @pets = Pet.order(created_at: :asc)
  end

  def profile
    @pet = Pet.where(user_id: current_user.id ).order(created_at: :asc)
  end
  
  def my_pets
    @pet = Pet.where(user_id: current_user.id ).order(created_at: :asc)
  end

  def my_postulations
    @postulation_pets = PostulationPet.where(user_id: current_user.id)
  end

  def pet_postulation
   @pet_postulations = PostulationPet.where(pet_id: params[:pet_id].to_i)
  end
  
  
  
end
