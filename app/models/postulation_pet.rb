class PostulationPet < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  
  has_many :answer_pets, dependent: :destroy

  def addAnswer(answers, postulation_pet_id)
    answers.each do |answer|
      if answer["text"] != '' 
          answer_text = self.answer_pets.where(postulation_pet_id: postulation_pet_id, question_id: answer["question_id"].to_i ).first_or_initialize
          answer_text.text = answer["text"]
          answer_text.save
        end
    end
  end

  def getAnswer(postulation_pet_id, question_id)
    if self.answer_pets.where(postulation_pet_id: postulation_pet_id.to_i, question_id: question_id).first
        self.answer_pets.where(postulation_pet_id: postulation_pet_id.to_i, question_id: question_id).first.text
    end
  end


end
