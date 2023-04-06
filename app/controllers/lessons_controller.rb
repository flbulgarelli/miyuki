class LessonsController < GuideContainerController
  private

  def subject
    @lesson ||= Lesson.find_by(id: params[:id])
  end

  def authorization_minimum_role
    :ex_student
  end

  def subject_container
    subject.guide
  end
end
