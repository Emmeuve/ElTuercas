class Client < ApplicationRecord
    # Validaciones
    validates :name,    presence: true
    validates :email,   presence: true,
end
