class GameController < ApplicationController

  def index

  end

  def show
    @game = Game.find(params[:game_id])
  end

  def ask_question
    subject_title = params[:subject_title]
    @question = Question.find_by_subject_title(subject_title)

    respond_to do |format|
      format.html
      format.xml { render :xml => @question }
    end
  end
  

  def new
    @player2 = User.find(params[:id])
    @game = Game.new(game_params)
    @game.save
  end

  private
  def game_params
     params.require(:game).permit(player1_id: current_user.id, player2_id: @player2, game_over: false, approved: true, player1_turn: true)
  end
end


