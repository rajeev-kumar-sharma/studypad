class GamesController < ApplicationController
  before_action :build_parent, only: [:index]
  before_action :build_instance, only: [:show, :game_begins, :game_ends, :goal_scored]

  # GET /leagues/:id/games
  def index
    @games = @league.games
  end

  # GET /leagues/:league_id/games/:id
  def show
    @game
  end

  # PUT
  def game_begins
    # date and time validation also required
    if @game.status == 'live'
      @game.status = 'live'
      @game.save
      render json: @game, status: 200
    else
      render json: {}, status: 403
    end
  end

  # PUT
  def game_ends
    # date and time validation also required
    if @game.status == 'over'
      @game.status = 'over'
      @game.save
      render json: @game, status: 200
    else
      render json: {}, status: 403
    end
  end

  # PUT
  def goal_scored
    @game.player_id = params[:player_id]
    @game.against_id = params[:against_id]
    if params[:against_id] == @game.away_club_id
      @game.home_goal
    else
      @game.away_goal
    end
  end

  private

  def league_params
    params.require(:league).permit(:league_id)
  end

  def build_parent
    @league = League.find(params[:league_id])
  end

  def build_instance
    @game = Game.find(params[:id])
  end
end
