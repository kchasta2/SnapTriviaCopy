class GameController < ApplicationController

  def index
    @user = User.find(params[:id])
    @gameId = params[:gameid]
  end

  def game

  end
end
