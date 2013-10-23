class AddLatitudeAndLongitudeToProclamations < ActiveRecord::Migration
  def change
    add_column :proclamations, :latitude, :float
    add_column :proclamations, :longitude, :float
  end
end
