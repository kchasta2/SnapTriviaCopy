class GameController < ApplicationController

  def index
  end

  def show

  end

  def ask_question
    subject_title = params[:subject_title]
    @question = Question.find_by_subject_title(subject_title)

    respond_to do |format|
      format.html
      format.xml { render :xml => @question }
    end
  end

  def create
    @player1 = current_user
    @player2 = :player2
  end

  def new
    @game = Game.new(game_params)
    @game.save
  end

  private
  def game_params
     params.require(:game).permit(current_user.id, @player2.id, game_over: false, approved: true, player1_turn: true)
  end
end


