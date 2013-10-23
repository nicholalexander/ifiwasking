class VotesController < ApplicationController

  def index
    @ranked = Proclamation.plusminus_tally
  end

  def new
    @vote = Vote.new
  end

  def create
  end


end
