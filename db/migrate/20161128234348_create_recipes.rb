class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cook_temp
      t.integer :cook_time_hrs
      t.integer :cook_time_minutes
      t.integer :servings
      t.text :directions
      t.integer :user_id
      t.integer :course_id

      t.timestamps

    end
  end
end
