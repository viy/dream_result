class ServicesController < ApplicationController
  def index
    I18n.locale = 'ru'
    @services = Service.filtered_by_type(params[:type]).page(params[:page]).per(8)
    @services = @services.tagged_with( params[:tag], :match_all => true ) if params[:tag]
    respond_to do |format|
      format.html
      format.js {render :partial => "index"}
    end
  end

  def show
    I18n.locale = 'ru'
    @service = Service.find(params[:id])
  end

  def media

  end
end
