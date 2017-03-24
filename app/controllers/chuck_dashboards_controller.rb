class ChuckDashboardsController < ApplicationController
  before_action :set_chuck_dashboard, only: [:show, :edit, :update, :destroy]

  # GET /chuck_dashboards
  def index
    #@chuck_dashboards = ChuckNorrisFact.all
  end

  # GET /chuck_dashboards/1
  #def show
  #end

  ## GET /chuck_dashboards/new
  #def new
    #@chuck_dashboard = ChuckDashboard.new
  #end

  ## GET /chuck_dashboards/1/edit
  #def edit
  #end

  ## POST /chuck_dashboards
  #def create
    #@chuck_dashboard = ChuckDashboard.new(chuck_dashboard_params)

    #if @chuck_dashboard.save
      #redirect_to @chuck_dashboard, notice: 'Chuck dashboard was successfully created.'
    #else
      #render :new
    #end
  #end

  ## PATCH/PUT /chuck_dashboards/1
  #def update
    #if @chuck_dashboard.update(chuck_dashboard_params)
      #redirect_to @chuck_dashboard, notice: 'Chuck dashboard was successfully updated.'
    #else
      #render :edit
    #end
  #end

  ## DELETE /chuck_dashboards/1
  #def destroy
    #@chuck_dashboard.destroy
    #redirect_to chuck_dashboards_url, notice: 'Chuck dashboard was successfully destroyed.'
  #end

  #private
    ## Use callbacks to share common setup or constraints between actions.
    #def set_chuck_dashboard
      #@chuck_dashboard = ChuckDashboard.find(params[:id])
    #end

    ## Only allow a trusted parameter "white list" through.
    #def chuck_dashboard_params
      #params[:chuck_dashboard]
    #end
end
