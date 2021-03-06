class GoodspotsController < ApplicationController


  def index
    # we filter the list of goodspots
    @goodspots = Goodspot.all

    if params[:location] != ""
      @goodspots = @goodspots.select{|gs| gs.location_id == params[:location].to_i}
    end
    if params[:category] != ""
      @goodspots = @goodspots.select{|gs| gs.category == params[:category]}
    end

    @locations_options = Location.all.map { |location| ["#{location.city}, #{location.state}", location.id] }
    @categories = ["Food/Drink", "Live Venue", "Movies", "Museum", "Tours", "Art/Music", "Misc.", "Surfing"] #.map {|c| [c, c] }
  end




  def new
    @goodspot = Goodspot.new

    @states = Location.all.map { |l| l.state }
    @cities = Location.all.map { |l| l.city }

    @categories = ["Food/Drink", "Live Venue", "Movies", "Museum", "Tours", "Art/Music", "Misc.", "Surfing"]
  end



  def create
    if current_user.goodspots.create(goodspot_params)
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end



  def show
    @goodspot = Goodspot.find(params[:id])
  end


  def edit
    @states = Location.all.map { |l| l.state }
    @cities = Location.all.map { |l| l.city }
    @categories = ["Food/Drink", "Live Venue", "Movies", "Museum", "Tours", "Art/Music", "Misc.", "Surfing"]
    @goodspot = Goodspot.find(params[:id])
  end



  def update
    @goodspot = Goodspot.find(params[:id])
    if @goodspot.update(goodspot_params)
      flash[:notice] = "Goodspot Succefully Updated!"
      redirect_to goodspot_path(@goodspot)
    end
  end



  def destroy
    Goodspot.find(params[:id]).delete
    flash[:notice] = 'Goodspot Deleted'
    redirect_to user_path(current_user)
  end



    private
    # Implement Strong Params
    def goodspot_params
      params.require(:goodspot).permit(:name, :description, :address, :state, :city, :category, :url, :image)
    end
end

