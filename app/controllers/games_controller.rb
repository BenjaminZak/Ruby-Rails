class GamesController < ApplicationController
  def index
  	@games = Game.all
  end
  def create
  	Game.create title: params[:title]
  	redirect_to '/games'
  end
  def show
  	@game = Game.find(params[:id])
  end
  def update
    Game.find(params[:id]).update title: params[:title]
    redirect_to "/games/#{params[:id]}"
  end
  def destroy
    Game.find(params[:id]).destroy
    redirect_to "/games"
  end
end
