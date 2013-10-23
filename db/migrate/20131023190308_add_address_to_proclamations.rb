class AddAddressToProclamations < ActiveRecord::Migration
  def change
    add_column :proclamations, :address, :text
  end
end
