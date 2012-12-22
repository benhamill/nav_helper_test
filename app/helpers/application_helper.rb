module ApplicationHelper
  def controller_classes
    path_elements = controller_path.split('/')
    top_nav = path_elements.first
    side_nav = path_elements.last

    "#{top_nav} sub_#{side_nav}"
  end
end
