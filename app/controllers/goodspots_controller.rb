class GoodspotsController < ApplicationController

  def new
    @goodspot = Goodspot.new

    @states = Location.all.map { |l| l.state }
    @cities = Location.all.map { |l| l.city }

    @categories = ["Restaurant", "Venue", "Museum", "Tours", "Art", "Food", "Surfing"]
  end



  def create
    if current_user.goodspots.create(goodspot_params)
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end



  def show
  end



  def destroy
  end



    private
    # Implement Strong Params
    def goodspot_params
      params.require(:goodspot).permit(:name, :description, :address, :state, :city, :category)
    end
end

