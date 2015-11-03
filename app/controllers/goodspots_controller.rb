class GoodspotsController < ApplicationController
  def new
  end

  def create
  end

    private
    # Implement Strong Params
    def goodspot_params
      params.require(:goodspot).permit(:name, :description, :location, :category
    end
end

