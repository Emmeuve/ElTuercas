class CreateVehiculos < ActiveRecord::Migration[7.0]
  def change
    create_table :vehiculos do |t|

      t.timestamps
    end
  end
end
