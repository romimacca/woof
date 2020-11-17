class HomeController < ApplicationController
  def index
    @pets = Pet.order(created_at: :desc)
  end
end
