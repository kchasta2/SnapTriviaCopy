class QuestionsController < ApplicationController


  def show
    @question = Question.find(params[:id])
  end

  def new

  end

  def create
  @question = Question.new(question_params)

    @question.save
    redirect_to @question
  end

  private def question_params
            params.require(:question).permit(:question, :rightAns, :wrongAns1, :wrongAns2, :wrongAns3)
  end
end
