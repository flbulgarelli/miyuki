module BoxHelper
  def last_box_class(trailing_boxes)
    trailing_boxes ? '' : 'mu-last-box'
  end
end