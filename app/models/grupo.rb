class Grupo < ApplicationRecord
    has_many :usuario_grupos, dependent: :destroy
    has_many :users, through: :usuario_grupos
    validates :nome_grupo, presence: true
end
