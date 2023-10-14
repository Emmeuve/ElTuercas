class Service < ApplicationRecord
    #validaciones
    validates :name, presence: true
end
