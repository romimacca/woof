class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook]

         
  has_many :pets, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy
  has_many :postulation_pets, dependent: :destroy
  

  def self.from_omniauth(auth)
    # where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    where(email: auth.info.email).first_or_create do |user|

      user.email = auth.info.email 
      user.password = Devise.friendly_token[0, 20]
      user.username = auth.info.name
    end
  end

  def self.created_by_day
    group_by_day(:created_at).count
  end

  def to_s
    self.email
  end
  
  def is_admin?
    admin
  end  
end
