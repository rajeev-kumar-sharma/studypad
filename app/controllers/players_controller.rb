class PlayersController < ApplicationController
  before_action :build_instance, only: [:show, :stats]
  before_action :parent_instance, only: [:index]
  before_action :league_instance, only: [:index]

  # GET /clubs/:id/players
  def index
    @players = @club.players
  end

  # GET /clubs/:club_id/players/:id
  def show
    @player
  end

  # GET /clubs/:club_id/players/:id/stats
  def stats
    @scores = Player.stats(@player.id, params[:league_id])
  end

  private

  def league_instance
    @league = League.find(params[:league_id])
  end

  def parent_instance
    @club = Club.find(params[:club_id])
  end

  def build_instance
    @player = Player.find(params[:id])
  end
end
