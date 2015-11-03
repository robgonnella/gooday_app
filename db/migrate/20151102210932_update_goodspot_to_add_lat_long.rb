class UpdateGoodspotToAddLatLong < ActiveRecord::Migration
  def change
    add_column :goodspots, :latitude, :float
    add_column :goodspots, :longitude, :float
  end
end
