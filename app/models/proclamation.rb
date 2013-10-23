class Proclamation < ActiveRecord::Base
    #TODO use validations?
    #validates :user_id, presence: true

    belongs_to :user
    has_many :votes

    acts_as_voteable
end
