class RenameSetsTable < ActiveRecord::Migration
  def change
    rename_table(:sets, :exercise_sets)
  end
end
