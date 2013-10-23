class Proclamation < ActiveRecord::Base
    #TODO use validations?
    #validates :user_id, presence: true

    belongs_to :user
    has_many :votes

    #thumbs_up config
    acts_as_voteable

    #geocoder config
    # geocoded_by :address
    # after_validation :geocode

    # reverse_geocoded_by :latitude, :longitude
    # after_validation :reverse_geocode  # auto-fetch address
    
end
