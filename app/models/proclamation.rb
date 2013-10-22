class Proclamation < ActiveRecord::Base
    #TODO use validations?
    #validates :user_id, presence: true

    belongs_to :user
    has_many :votes
end
