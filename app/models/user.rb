class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :usuario_grupos, dependent: :destroy
  has_many :grupos, through: :usuario_grupos
  has_many :sorteios, dependent: :destroy
end
