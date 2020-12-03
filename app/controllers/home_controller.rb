include SendGrid

class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @pets = Pet.order(created_at: :asc)
    @pet_available = Pet.where(is_adopted: false)
    
  end

  def send_email
    require 'sedgrid-ruby'

    from = Email.new(email: '')
    to = Email.new(email: 'rominamaccarini@gmail.com')
    subject = "hola"
    content = Content.new(type: "text/plain", value: "hola mail")

    mail_send = Mail.new(from, subjet, to, content)
    send_grid = SendGrid::API.new(api_key: '')
    response = send_grid.client.mail._('send').post(request_boby: mail_send.to_json) 
    
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
