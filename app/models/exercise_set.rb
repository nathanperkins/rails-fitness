class ExerciseSet < ActiveRecord::Base
  belongs_to :exercise

  validate :any_present?

  def any_present?
    if reps.blank? and weight.blank? and time.blank?
      errors.add :base, "You must fill in at least one field"
    end
  end
end