class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :main_goals, dependent: :destroy
  has_many :sub_goals, dependent: :destroy
  has_one :profile, dependent: :destroy
  validates :name, presence: true
end
