class AddWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.integer :weight
      t.text :notes
      t.datetime :datetime
      t.timestamps
    end
  end
end
