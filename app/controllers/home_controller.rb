class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @pets = Pet.order(created_at: :asc)
  end

  def profile
    @pet = Pet.all
  end
  
  def my_pets
    @pet = Pet.all
  end

  def my_postulations
    @pet = Pet.all
  end
  
  
end
