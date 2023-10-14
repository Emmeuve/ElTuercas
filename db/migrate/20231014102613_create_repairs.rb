class CreateRepairs < ActiveRecord::Migration[7.0]
  def change
    create_table :repairs do |t|

      t.timestamps
    end
  end
end
