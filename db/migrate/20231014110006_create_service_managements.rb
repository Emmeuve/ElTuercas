class CreateServiceManagements < ActiveRecord::Migration[7.0]
  def change
    create_table :service_managements do |t|
      t.references :client, null: false, foreign_key: true
      t.references :contact, null: false, foreign_key: true
      t.references :vehiculo, null: false, foreign_key: true
      t.references :repair, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
