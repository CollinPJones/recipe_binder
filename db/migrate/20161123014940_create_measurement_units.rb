class CreateMeasurementUnits < ActiveRecord::Migration
  def change
    create_table :measurement_units do |t|
      t.string :name
      t.integer :measurement_id

      t.timestamps

    end
  end
end
