class QuestionsController < ApplicationController
  def answer
    @your_message = params[:query]
    @answer = coach_answer(@your_message)
  end

  def coach_answer(your_message)
    if your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message == "Hello!"
      return "Hello"
    else
      return "I don't care, get dressed and go to work!"
    end
  end


  def ask
  end

end

