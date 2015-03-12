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

  def ask_question
    offset = rand(@questions.count)
    rand_question = @questions.offset(offset).first
    @question = rand_question
  end

  def new

  end

  def create
  @question = Question.new(question_params)

    @question.save
    redirect_to @question
  end

  
  private
  def question_params
    params.require(:question).permit( :title, :rightAns, :wrongAns1, :wrongAns2, :wrongAns3, :subject_title)
  end
end
