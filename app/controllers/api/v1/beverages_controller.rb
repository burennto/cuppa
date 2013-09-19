class Api::V1::BeveragesController < Api::V1::ApiController

  def index
    @beverages = Beverage.all

    respond_with @beverages
  end

end
