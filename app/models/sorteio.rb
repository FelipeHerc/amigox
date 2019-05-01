class Sorteio < ApplicationRecord
    belongs_to :grupo
    belongs_to :remetente, class_name: 'User'
    belongs_to :destinatario, class_name: 'User'
end
