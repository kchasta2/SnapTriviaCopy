class GameController < ApplicationController

  def index

  end

  # Will show game stats for game
  def show
    @game = Game.find(params[:game_id])
  end

  # pops the modal for the question
  def ask_question
    subject_title = params[:subject_title]
    @question = Question.find_by_subject_title(subject_title)

    respond_to do |format|
      format.html
      format.xml { render :xml => @question }
    end
  end

  # Creates new game
  def new(user_id)
    @player2 = User.find(user_id)
    @game = Game.new(game_params)
    @game.save

    redirect_to 'game/game'
  end

  def start_random_game

  end

  # checks params for new game MUST UPDATE!!!
  private
  def game_params
     params.require(:game).permit(player1_id: current_user.id, player2_id: @player2)
  end
end


