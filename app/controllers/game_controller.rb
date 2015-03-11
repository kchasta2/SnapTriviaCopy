class GameController < ApplicationController

  def index
    @users = User.all
  end

  def game

  end
end
