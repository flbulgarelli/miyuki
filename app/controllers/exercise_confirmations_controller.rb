class ExerciseConfirmationsController < AjaxController
  include NestedInExerciseController
  include ResultsRenderingController

  def create
    @exercise.submit_confirmation! current_user
    render json: progress_json
  end
end
