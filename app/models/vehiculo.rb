class Vehiculo < ApplicationRecord
    #validaciones
    validates :name, presence: true
end
