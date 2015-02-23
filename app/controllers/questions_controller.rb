class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    respond_to do |format|
      format.html
      format.xml {render :xml => @question}
    end
  end

  def new

  end

  def create
  @question = Question.new(question_params)

    @question.save
    redirect_to @question
  end


  def ask_question
    @questions = Question.scoped.select(:id);nil
    @question = Question.find( @questions.first( Random.rand( @questions.length)).last)
    redirect_to questions_ask_question_url
  end

  private def question_params
            params.require(:question).permit(:question, :rightAns, :wrongAns1, :wrongAns2, :wrongAns3)
  end
end
