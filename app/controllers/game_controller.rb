class GameController < ApplicationController

  def index

      end

      def show
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
      end

      private
      def game_params
        # params.require(:game).permit(:player1, :player2, :game_over, :approved)
      end
  end


