class QuestionPetsController < ApplicationController
  before_action :set_question_pet, only: [:show, :edit, :update, :destroy]

  # GET /question_pets
  # GET /question_pets.json
  def index
    @question_pets = QuestionPet.all
  end

  # GET /question_pets/1
  # GET /question_pets/1.json
  def show
  end

  # GET /question_pets/new
  def new
    @question_pet = QuestionPet.new
  end

  # GET /question_pets/1/edit
  def edit
  end

  # POST /question_pets
  # POST /question_pets.json
  def create
    @question_pet = QuestionPet.new(question_pet_params)

    respond_to do |format|
      if @question_pet.save
        format.html { redirect_to @question_pet, notice: 'Question pet was successfully created.' }
        format.json { render :show, status: :created, location: @question_pet }
      else
        format.html { render :new }
        format.json { render json: @question_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_pets/1
  # PATCH/PUT /question_pets/1.json
  def update
    respond_to do |format|
      if @question_pet.update(question_pet_params)
        format.html { redirect_to @question_pet, notice: 'Question pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_pet }
      else
        format.html { render :edit }
        format.json { render json: @question_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_pets/1
  # DELETE /question_pets/1.json
  def destroy
    @question_pet.destroy
    respond_to do |format|
      format.html { redirect_to question_pets_url, notice: 'Question pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_pet
      @question_pet = QuestionPet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_pet_params
      params.require(:question_pet).permit(:pet_id, :text)
    end
end
