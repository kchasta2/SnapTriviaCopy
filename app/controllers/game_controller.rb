class GameController < ApplicationController

  def index
  @player1 = :current_user

  end

  def show
    subject_title = params[:subject_title]
    @question = Question.find_by_subject_title(subject_title)

    respond_to do |format|
      format.html
      format.xml {render :xml => @question}
    end
  end



  def new
  @game = Game.new(game_params)
  end

  private
  def game_params
    params.require(:game).permit( :title, :rightAns, :wrongAns1, :wrongAns2, :wrongAns3, :subject_title)
  end
end
