class AnswerPetsController < ApplicationController
  before_action :set_answer_pet, only: [:show, :edit, :update, :destroy]

  # GET /answer_pets
  # GET /answer_pets.json
  def index
    @answer_pets = AnswerPet.all
  end

  # GET /answer_pets/1
  # GET /answer_pets/1.json
  def show
  end

  # GET /answer_pets/new
  def new
    @answer_pet = AnswerPet.new
  end

  # GET /answer_pets/1/edit
  def edit
  end

  # POST /answer_pets
  # POST /answer_pets.json
  def create
    @answer_pet = AnswerPet.new(answer_pet_params)

    respond_to do |format|
      if @answer_pet.save
        format.html { redirect_to @answer_pet, notice: 'Answer pet was successfully created.' }
        format.json { render :show, status: :created, location: @answer_pet }
      else
        format.html { render :new }
        format.json { render json: @answer_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_pets/1
  # PATCH/PUT /answer_pets/1.json
  def update
    respond_to do |format|
      if @answer_pet.update(answer_pet_params)
        format.html { redirect_to @answer_pet, notice: 'Answer pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer_pet }
      else
        format.html { render :edit }
        format.json { render json: @answer_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_pets/1
  # DELETE /answer_pets/1.json
  def destroy
    @answer_pet.destroy
    respond_to do |format|
      format.html { redirect_to answer_pets_url, notice: 'Answer pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_pet
      @answer_pet = AnswerPet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def answer_pet_params
      params.require(:answer_pet).permit(:question_pet_id, :postulation_pet_id, :text)
    end
end
