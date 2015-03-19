class QuestionsController < ApplicationController

  # gets all questions sets to @questions
  def index
    @questions = Question.all
  end

  # shows question only for display
  def show
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html
      format.xml {render :xml => @question}
    end
  end


  def new
  end

  # creates new question checks params
  def create
  @question = Question.new(question_params)

    @question.save
    redirect_to @question
  end

  # private check for params
  private
  def question_params
    params.require(:question).permit( :title, :rightAns, :wrongAns1, :wrongAns2, :wrongAns3, :subject_title)
  end
end
