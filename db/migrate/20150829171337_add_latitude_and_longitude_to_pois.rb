class AddLatitudeAndLongitudeToPois < ActiveRecord::Migration
  def change
    add_column :pois, :latitude, :float
    add_column :pois, :longitude, :float
  end
end
