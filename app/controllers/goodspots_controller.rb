class GoodspotsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @goodspot = Goodspot.find_by(user_id: (session[:user_id]))
  end

  def destroy
  end

    private
    # Implement Strong Params
    def goodspot_params
      params.require(:goodspot).permit(:name, :description, :location, :category
    end
end

