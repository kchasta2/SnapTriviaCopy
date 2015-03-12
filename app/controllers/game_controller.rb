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

  end
end
