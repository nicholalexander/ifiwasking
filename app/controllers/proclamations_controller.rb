class ProclamationsController < ApplicationController
  before_action :set_proclamation, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index]

  # GET /proclamations
  def index
    @proclamations = Proclamation.all
    @proclamation = Proclamation.new
  end

  # GET /proclamations/1
  def show
  end

  #implements  voting with thumbs_up
  #catches ActiveRecord error if user already voted for proclamation and redirects to error page.
  def vote_up
    begin
      current_user.vote_for(@proclamation = Proclamation.find(params[:id]))
      render :show
    rescue ActiveRecord::RecordInvalid
      render :error
    end
  end

  # GET /proclamations/new
  def new
    @proclamation = Proclamation.new
  end

  # GET /proclamations/1/edit
  def edit
  end

  # POST /proclamations
  def create
    @proclamation = Proclamation.new(proclamation_params)
    @proclamation.user = current_user

    respond_to do |format|
      if @proclamation.save
        format.html { redirect_to @proclamation, notice: 'Proclamation was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /proclamations/1

  def update
    respond_to do |format|
      if @proclamation.update(proclamation_params)
        format.html { redirect_to @proclamation, notice: 'Proclamation was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /proclamations/1
  
  def destroy
    @proclamation.destroy
    respond_to do |format|
      format.html { redirect_to proclamations_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proclamation
      @proclamation = Proclamation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proclamation_params
      params.require(:proclamation).permit(:proclamation)
    end
end
