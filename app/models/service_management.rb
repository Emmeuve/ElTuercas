class ServiceManagement < ApplicationRecord
  belongs_to :client
  belongs_to :contact
  belongs_to :vehiculo
  belongs_to :repair
  belongs_to :service
end
