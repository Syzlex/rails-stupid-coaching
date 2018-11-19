class QuestionsController < ApplicationController
  def ask
    @response = params[:question_to_coach]
    puts @response
  end

  def answer
    @response = params[:question_to_coach]
    if @response == "I am going to work"
      @coach_response = "Great!"
    elsif @response.include? "?"
      @coach_response = "Silly question, get dressed and go to work!"
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
    @coach_response
  end
end

# @response == "I am going to work"
