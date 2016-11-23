class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :purchase_container
      t.decimal :purchase_quanitity
      t.integer :category_id
      t.integer :purchase_measurement_unit_id

      t.timestamps

    end
  end
end
