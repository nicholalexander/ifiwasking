class ProclamationsController < ApplicationController
  before_action :set_proclamation, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :new]

  # GET /proclamations
  # GET /proclamations.json
  def index
    @proclamations = Proclamation.all
  end

  # GET /proclamations/1
  # GET /proclamations/1.json
  def show
  end

  # GET /proclamations/new
  def new
    @proclamation = Proclamation.new
  end

  # GET /proclamations/1/edit
  def edit
  end

  # POST /proclamations
  # POST /proclamations.json
  def create
    @proclamation = Proclamation.new(proclamation_params)
    #binding.pry
    @proclamation.user = current_user

    respond_to do |format|
      if @proclamation.save
        format.html { redirect_to @proclamation, notice: 'Proclamation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proclamation }
      else
        format.html { render action: 'new' }
        format.json { render json: @proclamation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proclamations/1
  # PATCH/PUT /proclamations/1.json
  def update
    respond_to do |format|
      if @proclamation.update(proclamation_params)
        format.html { redirect_to @proclamation, notice: 'Proclamation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proclamation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proclamations/1
  # DELETE /proclamations/1.json
  def destroy
    @proclamation.destroy
    respond_to do |format|
      format.html { redirect_to proclamations_url }
      format.json { head :no_content }
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
