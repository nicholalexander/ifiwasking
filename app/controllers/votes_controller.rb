class VotesController < ApplicationController

  def index

    binding.pry
  end

  def create


    @votes = Vote.all
    @ranked = Proclamation.plusminus_tally
  
  end

  def new
    @vote = Vote.new

  end

  def create
    
    @vote = Vote.new(vote_params)
    @proclamation.user = current_user

    redirect '/'

  end


end
