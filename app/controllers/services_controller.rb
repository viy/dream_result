class ServicesController < ApplicationController
  def index
    @services = Service.page(1).per(8)
  end

  def show
  end

  def media

  end
end
