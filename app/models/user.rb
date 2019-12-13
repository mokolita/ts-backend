class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true 
  validates :email, presence: true


  devise  :database_authenticatable,
          :registerable,
          :jwt_authenticatable,
          jwt_revocation_strategy: JwtBlacklist


  has_many :locations, dependent: :destroy
  has_many :comments, dependent: :destroy
end
