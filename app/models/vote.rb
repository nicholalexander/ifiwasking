class Vote < ActiveRecord::Base

  belongs_to :proclamation
  belongs_to :user
  
end
