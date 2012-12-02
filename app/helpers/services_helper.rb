module ServicesHelper
  def get_price_name(service)
    if service
      if service == 0
        t('forbid')
      else
        "#{service} #{t 'curency'}"
      end
    else
      t('included')
    end
  end

  def get_price_class(service)
    if service.nil? || service == 0
      ""
    else
      "buy"
    end
  end

  def get_active_tab(tab)
    if params[:program] == tab.to_s || (params[:program].nil? && tab == :all)
      "active"
    end
  end
end
