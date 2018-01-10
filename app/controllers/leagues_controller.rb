class LeaguesController < ApplicationController
  before_filter :build_instance, only: [:show, :standings, :matches]

  # GET /leagues
  def index
    @leagues = League.all
  end

  # GET /leagues/:id
  def show
    @games = @league.games
              .includes(:home_club, :away_club, :stadium)
              .order(:date, :time)
  end

  # GET /leagues/:id/standings
  def standings
    @clubs = League.standings(@league.id)
  end

  # GET /leagues/:id/matches
  def matches
    @games = @league.games
                .includes(:home_club, :away_club, :stadium)
                .where(status: ['over', 'live'])
                .order(:date, :time)
  end

  protected

  def build_instance
    @league = League.find(params[:id])
  end
end
