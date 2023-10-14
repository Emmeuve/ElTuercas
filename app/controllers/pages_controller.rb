class PagesController < ApplicationController
  def home
  end

  def nosotros
    @pagy, @records = pagy(Product.all)
  end

  def servicios
  end

  def contacto
  end
end
