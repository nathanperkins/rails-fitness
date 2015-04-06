class AddDefaultExercises < ActiveRecord::Migration
  def change
    create_table :default_exercises do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
