class VotesController < ApplicationController

  #implements leaderboard
  def index
    @ranked = Proclamation.plusminus_tally
  end


end
