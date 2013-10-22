class Vote < ActiveRecord::Base

  belongs_to :proclamations
  belongs_to :users
  
end
