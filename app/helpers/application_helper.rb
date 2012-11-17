module ApplicationHelper
  def is_active(ctrl, action="")
    if params[:controller] == ctrl
      if action == "" ||  params[:action] == action
        "active"
      end
    end
  end

  def get_accardion_url(options = {})
    if params[:controller] == "products"
      products_url options
    else
      services_url options
    end
  end

end
