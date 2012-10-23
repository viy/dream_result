module ApplicationHelper
  def is_active(ctrl, action="")
    if params[:controller] == ctrl
      if action == "" ||  params[:action] == action
        "active"
      end
    end
  end
end
