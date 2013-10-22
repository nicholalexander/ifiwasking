class AddUserIdToProclamation < ActiveRecord::Migration
  def change
    add_column :proclamations, :user_id, :integer
  end
end
