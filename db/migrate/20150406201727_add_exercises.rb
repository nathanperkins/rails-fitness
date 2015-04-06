class AddExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :workout_id
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
