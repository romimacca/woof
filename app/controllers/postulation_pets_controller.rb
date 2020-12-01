class PostulationPetsController < ApplicationController
  before_action :set_postulation_pet, only: [:show, :edit, :update, :destroy]

  # GET /postulation_pets
  # GET /postulation_pets.json
  def index
    @postulation_pets = PostulationPet.all
  end

  # GET /postulation_pets/1
  # GET /postulation_pets/1.json
  def show 
  end

  # GET /postulation_pets/new
  def new
    @postulation_pet = PostulationPet.new
    @postulation_pet.user = current_user
    @postulation_pet.pet = Pet.where(id: params[:pet_id]).first    
    @questions = Question.joins(question_pets: :pet).where("pets.id= "+params[:pet_id]).all    
  end

  # GET /postulation_pets/1/edit
  def edit
    @questions = Question.joins(question_pets: :pet).where("pets.id= "+@postulation_pet.pet_id.to_s).all 
  end

  # POST /postulation_pets
  # POST /postulation_pets.json
  def create
    @postulation_pet = PostulationPet.new(postulation_pet_params)
    respond_to do |format|
      if @postulation_pet.save

        @postulation_pet.addAnswer(params[:postulation_pet][:answer_pets], @postulation_pet.id )

        format.html { redirect_to @postulation_pet, notice: 'Postulation pet was successfully created.' }
        format.json { render :show, status: :created, location: @postulation_pet }
      else
        format.html { render :new }
        format.json { render json: @postulation_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulation_pets/1
  # PATCH/PUT /postulation_pets/1.json
  def update
    respond_to do |format|
      if @postulation_pet.update(postulation_pet_params)

        if params[:postulation_pet].has_key?(:answer_pets)
          @postulation_pet.addAnswer(params[:postulation_pet][:answer_pets], @postulation_pet.id )
        end
        @postulation_pet.setAdopted(params[:postulation_pet][:pet_id], params[:postulation_pet][:state]== 1 ) 

        format.html { redirect_to @postulation_pet, notice: 'Postulation pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @postulation_pet }
      else
        format.html { render :edit }
        format.json { render json: @postulation_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulation_pets/1
  # DELETE /postulation_pets/1.json
  def destroy
    @postulation_pet.destroy
    respond_to do |format|
      format.html { redirect_to postulation_pets_url, notice: 'Postulation pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulation_pet
      @postulation_pet = PostulationPet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postulation_pet_params
      params.require(:postulation_pet).permit(:pet_id, :user_id, { question_ids: []}, {answer_pet_id: []}, :state )
    end
end
