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
    @game = Game.find(params[:id])
    if @game.update title: params[:title]
      redirect_to "/games/#{params[:id]}"
    else
      render "show"
    end
  end
  def destroy
    Game.find(params[:id]).destroy
    redirect_to "/games"
  end
end
