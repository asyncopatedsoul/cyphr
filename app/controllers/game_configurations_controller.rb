class GameConfigurationsController < ApplicationController
  before_action :set_game_configuration, only: [:show, :edit, :update, :destroy]

  # GET /game_configurations
  # GET /game_configurations.json
  def index
    @game_configurations = GameConfiguration.all
  end

  # GET /game_configurations/1
  # GET /game_configurations/1.json
  def show
  end

  # GET /game_configurations/new
  def new
    @game_configuration = GameConfiguration.new
  end

  # GET /game_configurations/1/edit
  def edit
  end

  # POST /game_configurations
  # POST /game_configurations.json
  def create
    @game_configuration = GameConfiguration.new(game_configuration_params)

    respond_to do |format|
      if @game_configuration.save
        format.html { redirect_to @game_configuration, notice: 'Game configuration was successfully created.' }
        format.json { render action: 'show', status: :created, location: @game_configuration }
      else
        format.html { render action: 'new' }
        format.json { render json: @game_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_configurations/1
  # PATCH/PUT /game_configurations/1.json
  def update
    respond_to do |format|
      if @game_configuration.update(game_configuration_params)
        format.html { redirect_to @game_configuration, notice: 'Game configuration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_configurations/1
  # DELETE /game_configurations/1.json
  def destroy
    @game_configuration.destroy
    respond_to do |format|
      format.html { redirect_to game_configurations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_configuration
      @game_configuration = GameConfiguration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_configuration_params
      params.require(:game_configuration).permit(:game_id, :match_id, :author_id, :metadata, :title)
    end
end
