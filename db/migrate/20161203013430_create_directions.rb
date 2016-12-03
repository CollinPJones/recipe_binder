class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.integer :recipe_id
      t.integer :step
      t.text :description

      t.timestamps

    end
  end
end
