class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question]
      @client_question = params[:question].to_s
      if @client_question == "I am going to work"
        @server_answer = "Great!"
      elsif @client_question[-1] == "?"
        @server_answer = "Silly question, get dressed and go to work!"
      else
        @server_answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
