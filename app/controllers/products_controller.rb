class ProductsController < ApplicationController
  def index
    I18n.locale = 'ru'
    @products = Product.page(params[:page]).per(9)
    @products = @products.tagged_with( params[:tag] ) if params[:tag]
  end
end
