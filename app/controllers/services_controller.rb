class ServicesController < ApplicationController
  def index
    @services = Service.filtered_by_type(params[:type]).page(params[:page]).per(8)
    @services = @services.tagged_with( params[:tag] ) if params[:tag]
    respond_to do |format|
      format.html
      format.js {render :partial => "index"}
    end
  end

  def show
  end

  def media

  end
end
