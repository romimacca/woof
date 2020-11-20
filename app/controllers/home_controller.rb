class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @pets = Pet.order(created_at: :asc)
  end

  def profile
    @pets = Pet.all
  end
  
  
  
end
