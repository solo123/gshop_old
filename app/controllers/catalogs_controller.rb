class CatalogsController < ApplicationController
  def show
    @catalog = Product.select('catalog, count(*) as cnt').order(:catalog).group(:catalog)
  end

end

