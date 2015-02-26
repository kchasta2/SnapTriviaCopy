class QuestionsController < ApplicationController


  def index
    @questions = Question.all
  end

  def show
    @subject = params[:@subjectText]
    @questions = Question.find(params[:subjects])
    ask_question
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
    params.require(:question).permit(:title, :rightAns, :wrongAns1, :wrongAns2, :wrongAns3, :subjects)
  end
end
