class PlayersController < ApplicationController
  def index
    @players = Player.all
    render "players/index"
  end

  def new
    render "players/new"
  end

  def create
    player = Player.new(name: params[:name], team: params[:team], number: params[:number], image: params[:image])
    p params
    player.save
    redirect_to "/players/#{player.id}"
  end

  def edit
    @player = Player.find_by(id: params[:id])
    render "players/edit"
  end

  def update
    player = Player.find_by(id: params[:id])
    player.name = params[:name] || player.name
    player.team = params[:team] || player.team
    player.number = params[:number] || player.number
    player.image = params[:image] || player.image
    player.save

    redirect_to "http://localhost:3000/players"
    # redirect_to "/players/#{player.id}"
  end

  def show
    @player = Player.find_by(id: params[:id])
    render "players/show"
  end
end
