module NestedInExerciseController
  extend ActiveSupport::Concern

  included do
    before_action :set_exercise!
  end

  def set_exercise!
    @exercise = Exercise.find(params[:exercise_id])
  end
end
