class AddSets < ActiveRecord::Migration
  def change
    create_table :sets do |t|
      t.integer :exercise_id
      t.integer :reps
      t.integer :weight
      t.integer :time
      t.timestamps
    end
  end
end
